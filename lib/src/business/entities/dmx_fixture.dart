import 'package:flutter_dmx/flutter_dmx.dart';

/// Represents a DMX-enabled lighting fixture.
///
/// This model describes a single fixture including:
/// - its DMX address
/// - name and area grouping
/// - supported color mode (RGB, RGBW, White)
/// - number of channels used
/// - optional multi-fixture count
/// - optional address mode (sequential/shared)
///
/// This is returned by the plugin and used when sending fixture-related commands.
class DmxFixture {
  /// Unique fixture ID.
  final int id;

  /// Display name of the fixture or group of fixtures.
  final String name;

  /// Starting DMX address of the fixture(s).
  final int address;

  /// Logical grouping name.
  final String area;

  /// Color mode supported by this fixture.
  final ColorMode colorMode;

  /// Number of channels used by this fixture.
  final int channel;

  /// Number of repeated fixtures, if applicable.
  final int? count;

  /// Addressing strategy (sequential or shared), if defined.
  final AddressMode? addressMode;

  DmxFixture({
    required this.id,
    required this.address,
    required this.area,
    required this.colorMode,
    required this.name,
    required this.channel,
    this.count,
    this.addressMode,
  });
}
