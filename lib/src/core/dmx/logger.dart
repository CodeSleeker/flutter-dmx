class DmxLogger {
  static bool _enabled = false;

  static void enable() => _enabled = true;
  static void disable() => _enabled = false;

  static void log(String message) {
    if (_enabled) {
      // ignore: avoid_print
      print('[FlutterDmx] $message');
    }
  }
}
