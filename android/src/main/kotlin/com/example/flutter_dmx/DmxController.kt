package com.example.flutter_dmx

import android.util.Log
import ch.bildspur.artnet.ArtNetClient
import com.example.flutter_dmx.models.Dmx
import com.google.gson.Gson
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
    private val dmxMap = mutableMapOf<Int, Dmx>()
    private val artNet = ArtNetClient()
    private var ipAddress: String? = null

    fun setIpAddress(ip: String){
        ipAddress = ip
    }
    fun setDmx(data: String){
        try {
            val dmx: Dmx = gson.fromJson(data, Dmx::class.java)
            dmxMap[dmx.id] = dmx
            val dmxList: List<Map<String, Any?>> = dmxMap.values.map { dmx ->
                mapOf(
                    "id" to dmx.id,
                    "name" to dmx.name,
                    "address" to dmx.address,
                    "area" to dmx.area,
                    "colorMode" to dmx.colorMode,
                    "channel" to dmx.channel,
                    "count" to dmx.count,
                    "addressMode" to dmx.addressMode
                )
            }.toList()
            mainScope.launch {
//                val jsonArrayString = gson.toJson(dmxMap.values)
                channel.invokeMethod("dmx_list", dmxList)
            }
        } catch (e: Exception){
            Log.e("DMX", "Invalid JSON: $data", e)
        }
    }

    private fun sendDmxData(data: ByteArray, universe: Int){
        scope.launch {
            try {
                artNet.unicastDmx(ipAddress, 0, universe, data)
            } catch (e: Exception){
                e.printStackTrace()
            }
        }
    }
}