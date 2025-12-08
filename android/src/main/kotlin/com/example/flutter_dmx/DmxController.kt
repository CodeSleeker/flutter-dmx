package com.example.flutter_dmx

import android.R
import android.util.Log
import ch.bildspur.artnet.ArtNetClient
import ch.bildspur.artnet.events.ArtNetServerEventAdapter
import ch.bildspur.artnet.packets.ArtNetPacket
import com.example.flutter_dmx.models.DmxCommand
import com.example.flutter_dmx.models.DmxFixture
import com.example.flutter_dmx.models.DmxPacket
import com.google.gson.Gson
import com.google.gson.reflect.TypeToken
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.launch

class DmxController(
    private val channel: MethodChannel,
    private val scope: CoroutineScope = CoroutineScope(SupervisorJob() + Dispatchers.IO)
) {
    private val mainScope = CoroutineScope(Dispatchers.Main)
    private val gson: Gson = Gson()
    private val dmxData: ByteArray = ByteArray(512)
    private val dmxMap = mutableMapOf<Int, DmxFixture>()
    private val artNet = ArtNetClient()
    private var ipAddress: String? = null
    private var universe: Int? = null

    fun setLogging(enable: Boolean){
        loggingEnabled = enable
    }

    private var loggingEnabled = false

    private fun log(message: String){
        if(loggingEnabled){
            Log.d("[Android][FlutterDmx]", message)
        }
    }

    fun applyBrightness(rgb: List<Int>, brightnessPercent: Int): List<Int> {
        val brightness = brightnessPercent / 100.0
        return rgb.map { (it * brightness).toInt().coerceIn(0,255) }
    }

    private fun writeRgb(baseIndex: Int, color: List<Int>){
        dmxData[baseIndex] = color[0].toByte()
        dmxData[baseIndex + 1] = color[1].toByte()
        dmxData[baseIndex + 2] = color[2].toByte()
    }

    private fun applyChannelLogic(fixture: DmxFixture, command: DmxCommand, index: Int){
        var adjustedColor = command.color
        var baseIndex = index

        when(fixture.channel){
            7 -> {
                dmxData[index] = (255 * (command.brightness / 100f)).toInt().toByte()
                baseIndex = index + 1
            }
            1 -> {
                if(command.color.all { it == 255 }){
                    dmxData[index] = (255 * (command.brightness / 100f)).toInt().toByte()
                }
            }
            else -> {
                adjustedColor = applyBrightness(command.color, command.brightness)
            }
        }
        when(fixture.colorMode.lowercase()){
            "rgb" -> {
                if(!command.color.all { it == 255 }){
                    writeRgb(baseIndex, adjustedColor)
                }
            }
            "rgbw" -> writeRgb(baseIndex, adjustedColor)
        }
    }

    private fun applyAllColor(fixture: DmxFixture, index: Int, color: List<Int>){
        var baseIndex = index
        when(fixture.channel){
            7 -> {
                dmxData[index] = 255.toByte()
                baseIndex = index +1
            }
            1 -> {
                if(color.all { it == 255 }){
                    dmxData[index] = 255.toByte()
                }
            }
        }
        when(fixture.colorMode.lowercase()){
            "rgb" -> {
                if(!color.all { it == 255 }){
                    writeRgb(baseIndex, color)
                }
            }
            "rgbw" -> {
                writeRgb(baseIndex, color)
            }
        }
    }

    private fun applyAll(fixture: DmxFixture, index: Int, brightness: Int){
        when(fixture.channel){
            7 -> dmxData[index] = brightness.toByte()
            1 -> dmxData[index] = brightness.toByte()
            else -> {
                dmxData[index] = (dmxData[index].toInt() * brightness).toByte()
                dmxData[index + 1] = (dmxData[index+1].toInt() * brightness).toByte()
                dmxData[index + 2] = (dmxData[index+2].toInt() * brightness).toByte()
            }
        }
    }

    private fun applySequential(fixture: DmxFixture, command: DmxCommand){
        val count = fixture.count ?: 1
        if(fixture.index != null){
            val baseIndex = fixture.address + (fixture.index * fixture.channel)
            applyChannelLogic(fixture, command, baseIndex)
        }
        else {
            repeat(count) { i ->
                val baseIndex = fixture.address + (i * fixture.channel)
                applyChannelLogic(fixture, command, baseIndex)
            }
        }
    }

    private fun applySingle(fixture: DmxFixture, command: DmxCommand){
        applyChannelLogic(fixture, command, fixture.address)
    }

    private fun applyCommandToFixture(fixture: DmxFixture, command: DmxCommand){
        val count = fixture.count ?: 1
        val addressMode = fixture.addressMode?.lowercase() ?: "shared"
        if(count > 0 && addressMode == "seq"){
            applySequential(fixture, command)
        }
        else {
            applySingle(fixture, command)
        }
    }

    fun setAllColor(colorString: String){
        log("Received setAllColor: $colorString")
        dmxData.fill(0)
        val rgb: List<Int> = gson.fromJson(colorString, object : TypeToken<List<Int>>() {}.type)
        dmxMap.values.forEach { fixture ->
            val count = fixture.count ?: 1
            val addressMode = fixture.addressMode?.lowercase() ?: "shared"
            if(count > 0 && addressMode == "seq"){
                repeat(count){i ->
                    log("Applying command to fixture id: ${fixture.id} index: $i")
                    val baseIndex = fixture.address + (i * fixture.channel)
                    applyAllColor(fixture, baseIndex, rgb)
                }
            }
            else {
                log("Applying command to fixture id: ${fixture.id}")
                applyAllColor(fixture, fixture.address, rgb)
            }
        }
        sendDmxData(dmxData)
    }

    fun setAllBrightness(brightnessPercent: Int){
        log("Received setAllBrightness: $brightnessPercent%")
        val brightness = (255 * (brightnessPercent/100f)).toInt()
        dmxMap.values.forEach { fixture ->
            val count = fixture.count ?: 1
            val addressMode = fixture.addressMode?.lowercase() ?: "shared"
            if(count > 0 && addressMode == "seq"){
                repeat(count){i->
                    log("Applying command to fixture id: ${fixture.id} index: $i")
                    val baseIndex = fixture.address + (i * fixture.channel)
                    applyAll(fixture, baseIndex, brightness)
                }
            }
            else {
                log("Applying command to fixture id: ${fixture.id}")
                applyAll(fixture, fixture.address, brightness)
            }
        }
        sendDmxData(dmxData)
    }

    fun turnAll(on: Boolean){
        if(on) log("Received turnAllOn")
        else log("Received turnAllOff")
        dmxMap.values.forEach { fixture ->
            val count = fixture.count ?: 1
            val addressMode = fixture.addressMode?.lowercase() ?: "shared"
            if(count > 0 && addressMode == "seq"){
                repeat(count){i->
                    log("Applying command to fixture id: ${fixture.id} index: $i")
                    val baseIndex = fixture.address + (i * fixture.channel)
                    applyAll(fixture, baseIndex, if(on) 255 else 0)
                }
            }
            else {
                log("Applying command to fixture id: ${fixture.id}")
                applyAll(fixture, fixture.address, if(on) 255 else 0)
            }
        }
    }

    fun controlById(data: String){
        log("Received controlById: $data")
        val command = gson.fromJson(data, DmxCommand::class.java)
        val fixture = dmxMap[command.id] ?: return
        log("Applying command to fixture id: ${fixture.id}")
        applyCommandToFixture(fixture, command)
        sendDmxData(dmxData)
    }

    fun controlByName(data: String){
        log("Received controlByName: $data")
        val command = gson.fromJson(data, DmxCommand::class.java)
        dmxMap.values.filter { it.name == command.name}
            .forEach { fixture ->
                log("Applying command to fixture id: ${fixture.id}")
                applyCommandToFixture(fixture, command)
            }
        sendDmxData(dmxData)
    }

    fun controlByArea(data: String){
        log("Received controlByArea: $data")
        val command = gson.fromJson(data, DmxCommand::class.java)
        dmxMap.values.filter { it.area == command.area }
            .forEach { fixture ->
                log("Applying command to fixture id: ${fixture.id}")
                applyCommandToFixture(fixture, command)
            }
        sendDmxData(dmxData)
    }

    fun sendPackets(data: String){
        log("Received packet sending request")
        val listType = object: TypeToken<List<DmxPacket>>(){}.type
        val packets: List<DmxPacket> = gson.fromJson(data, listType)

        packets.forEach { packet ->
            repeat(packet.byteData.size){i->
                val index = packet.address + i
                dmxData[index] = packet.byteData[i].toByte()
            }
        }
        sendDmxData(dmxData)
    }
    fun setIpAddress(ip: String){
        log("Ip Address set")
        ipAddress = ip
    }
    fun setUniverse(universe: Int){
        log("Universe set")
        this.universe = universe
    }
    fun setDmx(data: String){
        log("Received dmx fixture data: $data")
        try {
            val dmx: DmxFixture = gson.fromJson(data, DmxFixture::class.java)
            dmxMap[dmx.id] = DmxFixture(
                id = dmx.id,
                name = dmx.name,
                address = dmx.address - 1,
                area = dmx.area,
                colorMode = dmx.colorMode,
                channel = dmx.channel,
                count = dmx.count,
                addressMode = dmx.addressMode,
                index = dmx.index
            )
            val dmxList: List<Map<String, Any?>> = dmxMap.values.map { dmx ->
                mapOf(
                    "id" to dmx.id,
                    "name" to dmx.name,
                    "address" to dmx.address + 1,
                    "area" to dmx.area,
                    "colorMode" to dmx.colorMode,
                    "channel" to dmx.channel,
                    "count" to dmx.count,
                    "addressMode" to dmx.addressMode
                )
            }.toList()
            mainScope.launch {
                channel.invokeMethod("dmx_list", dmxList)
            }
        } catch (e: Exception){
            log("Invalid JSON: $data")
        }
    }

    private fun sendDmxData(data: ByteArray){
        log("Sending dmx data...")
        scope.launch {
            try {
                log("Sending to universe $universe, size: ${data.size}")
                artNet.unicastDmx(ipAddress, 0, universe ?: 0, data)
            } catch (e: Exception){
                log("ERROR sending dmx: ${e.message}")
            }
        }
    }

    fun start(){
        scope.launch {
            artNet.start()
        }
    }
}