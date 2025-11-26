import 'package:flutter_dmx/flutter_dmx.dart';

/// High-level command for controlling one or more fixtures.
///
/// This is the main control object used with:
/// - `controlById()`
/// - `controlByArea()`
/// - `controlByName()`
///
/// It contains the intended brightness and color, plus optional
/// fixture identifiers (ID or area).
class DmxCommand {
  /// The fixture ID to control (if applicable).
  final int? id;

  /// Area name to control (if applicable).
  final String? area;

  /// Display name to control (if applicable).
  final String? name;

  /// Brightness value in percentage (0–100).
  final int brightness;

  /// The color to apply.
  final DmxColor color;

  DmxCommand({
    required this.brightness,
    required this.color,
    this.area,
    this.id,
    this.name,
  });
}
