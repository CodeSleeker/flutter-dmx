import 'package:flutter_dmx/flutter_dmx.dart';

/// Listener for receiving DMX fixture updates from the plugin.
///
/// Implement this to react to fixture list changes (e.g. UI updates).
abstract class DmxListener {
  /// Called when the plugin sends an updated list of fixtures.
  void onDmxList(List<DmxFixture> dmxList);
}
