import 'package:flutter_dmx/src/business/entities/scene_step.dart';

/// A complete lighting sequence composed of multiple `SceneStep` objects.
///
/// A `Scene` defines a timeline of steps, each containing commands that run
/// for a specific duration. Scenes allow you to create dynamic lighting
/// effects such as:
/// - color chases
/// - pulse patterns
/// - show sequences
///
/// The scene engine plays each step in order. When the last step finishes,
/// the scene can optionally restart automatically if `loop` is enabled.
///
/// Scenes can be stored, recalled, and executed through:
/// - `setScene()`
class Scene {
  /// Unique identifier for this scene.
  /// Useful if you want to store or reference scenes later.
  final int id;

  /// Display name of the scene.
  final String name;

  /// Ordered list of steps that form the scene timeline.
  final List<SceneStep> steps;

  /// Whether the scene should automatically restart
  /// after reaching the last step.
  final bool loop;

  Scene({
    required this.id,
    required this.name,
    required this.steps,
    this.loop = false,
  });
}
