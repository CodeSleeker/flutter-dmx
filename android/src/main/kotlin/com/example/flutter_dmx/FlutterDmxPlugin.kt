package com.example.flutter_dmx

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

/** FlutterDmxPlugin */
class FlutterDmxPlugin: FlutterPlugin, MethodCallHandler {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private lateinit var channel : MethodChannel

  private lateinit var dmxController: DmxController

  override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "dmx")
    channel.setMethodCallHandler(this)

    dmxController = DmxController(channel).apply { start() }
  }

  override fun onMethodCall(call: MethodCall, result: Result) {
    when(call.method){
      "universe" -> {
        dmxController.setUniverse(call.arguments as Int)
        result.success(true)
      }
      "ipAddress" -> {
        dmxController.setIpAddress(call.arguments as String)
        result.success(true)
      }
      "scene" -> {
        val jsonString = call.arguments as String
        dmxController.setScene(jsonString)
        result.success(true)
      }
      "playScene" -> {
        val id = call.arguments as Int
        dmxController.playScene(id)
        result.success(true)
      }
      "stopScene" -> {
        val id = call.arguments as Int
        dmxController.stopScene(id)
        result.success(true)
      }
      "data" -> {
        val jsonString = call.arguments as String
        dmxController.setDmx(jsonString)
        result.success(true)
      }
      "packet" -> {
        dmxController.sendPackets(call.arguments as String)
        result.success(true)
      }
      "controlByArea" -> {
        val jsonString = call.arguments as String
        dmxController.controlByArea(jsonString)
        result.success(true)
      }
      "controlById" -> {
        dmxController.controlById(call.arguments as String)
        result.success(true)
      }
      "controlByName" -> {
        dmxController.controlByName(call.arguments as String)
        result.success(true)
      }
      "turnAllOn" -> {
        dmxController.turnAll(true)
        result.success((true))
      }
      "turnAllOff" -> {
        dmxController.turnAll(false)
        result.success(true)
      }
      "setAllBrightness" -> {
        dmxController.setAllBrightness(call.arguments as Int)
        result.success(true)
      }
      "setAllColor" -> {
        dmxController.setAllColor(call.arguments as String)
        result.success(true)
      }
      "setLogging" -> {
        dmxController.setLogging(call.arguments as Boolean)
        result.success(true)
      }
    }
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }
}
