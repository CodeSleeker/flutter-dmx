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

    dmxController = DmxController(channel)
  }

  override fun onMethodCall(call: MethodCall, result: Result) {
    when(call.method){
      "ipAddress" -> {
        dmxController.setIpAddress(call.arguments as String)
        println("IP address set: ${call.arguments}")
        result.success(true)
      }
      "data" -> {
        val jsonString = call.arguments as String
        dmxController.setDmx(jsonString)
        println("Dmx data set: $jsonString")
        result.success(true)
      }
      "packet" -> {

      }
    }
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }
}
