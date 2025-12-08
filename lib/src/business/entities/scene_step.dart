import 'package:flutter_dmx/flutter_dmx.dart';

/// Represents a single programmed action within a lighting scene.
///
/// A `SceneStep` defines:
/// - how long the step lasts (`durationMs`)
/// - which DMX commands should run during that time (`commands`)
///
/// Multiple commands can run in the same step, letting you control
/// several fixtures at once. When the duration ends, the scene
/// automatically advances to the next step.
///
/// Use this to build effects such as:
/// - static looks
/// - multi-fixture transitions
/// - timed cues in a sequence
class SceneStep {
  /// Duration of this step in **milliseconds**.
  /// After this time passes, the scene will move to the next step.
  final int durationMs;

  /// A list of DMX commands that will be executed during this step.
  /// You can control multiple fixtures at once.
  final List<DmxCommand> commands;

  SceneStep({required this.commands, required this.durationMs});
}
