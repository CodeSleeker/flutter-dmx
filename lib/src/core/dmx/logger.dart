import 'package:flutter/material.dart';

class DmxLogger {
  static bool _enabled = false;

  static void enable() => _enabled = true;
  static void disable() => _enabled = false;

  static void log(String message) {
    if (_enabled) {
      debugPrint('[FlutterDmx] $message');
    }
  }
}
