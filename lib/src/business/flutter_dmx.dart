import 'package:flutter_dmx/flutter_dmx.dart';
import 'package:flutter_dmx/src/business/repositories/dmx_command_builder.dart';
import 'package:flutter_dmx/src/business/repositories/scene_command_builder.dart';
import 'package:flutter_dmx/src/data/flutter_dmx_impl.dart';

/// The main interface for interacting with Flutter DMX plugin
///
/// This exposes all available DMX control operation such as:
/// - setting IP
/// - sending raw packets
/// - controlling fixtures by area / id / name
/// - reading fixture updates
/// - accessing the command builder
abstract class FlutterDmx {
  /// Factory constructor that returns the default implementation.
  factory FlutterDmx() => FlutterDmxImpl();

  /// Sets the DMX controller IP address.
  ///
  /// Returns 'true' if the IP was set successfully.
  Future<bool> setIpAddress(String ip);

  /// Sets the DMX controller universe
  ///
  /// Returns 'true' if the universe was set successfully
  Future<bool> setUniverse(int universe);

  /// Send a full DMX fixture data object to the controller.
  Future<bool> setData(DmxFixture data);

  /// Set a predefined scene to all affected fixtures.
  Future<bool> setScene(Scene scene);

  /// Sends a list of DMX packets over the network
  ///
  /// Each packet contains channel and value data needed for lighting control.
  Future<bool> sendPackets(List<DmxPacket> packets);

  /// Play scene using its assigned ID.
  Future<bool> playScene(int id);

  /// Stop scene by ID.
  Future<bool> stopScene(int id);

  /// Controls fixtures grouped by area name.
  ///
  /// Example: turning on all lights in the "Stage Left" area.
  Future<bool> controlByArea(DmxCommand command);

  /// Controls a fixture(s) using its assigned ID.
  /// If `index` is provided in the command, only that specific instance
  /// within a multi-instance fixture (count > 1) will be targeted.
  Future<bool> controlById(DmxCommand command);

  /// Controls fixtures using their friendly string name.
  Future<bool> controlByName(DmxCommand command);

  /// Turn all fixtures off
  Future<bool> turnAllOff();

  /// Turn all fixtures on, set brightness if defined else full brightness
  Future<bool> turnAllOn();

  /// Set all fixtures brightness
  Future<bool> setAllBrightness(int value);

  /// Set all fixtures color
  Future<bool> setAllColor(DmxColor color);

  /// Stream of all DMX fixtures currently known to the controller.
  ///
  /// Emits updates whenever fixtures change state.
  Stream<List<DmxFixture>> get dmxList;

  /// Stream of all Scenes
  ///
  /// Emits updates whenever scenes change state.
  Stream<List<Scene>> get scenes;

  /// Registers a listener to receive callbacks for low-level DMX events.
  void setListener(DmxListener listener);

  /// Enable logging
  void enableLogging(bool enabled);

  /// Enable persistence
  void persist();

  /// Provides a fluent command builder for constructing DMX commands.
  ///
  /// Example:
  /// ```dart
  /// flutterDmx.set
  ///   .color(DmxColor.red)
  ///   .brightness(255)
  /// ```
  DmxCommandBuilder get set;

  /// Provides a fluent command builder for controlling a specific scene by its ID.
  ///
  /// Example:
  /// ```dart
  /// // Play scene with ID 0
  /// flutterDmx.scene(0).play();
  ///
  /// // Stop scene with ID 2
  /// flutterDmx.scene(2).stop();
  /// ```
  SceneCommandBuilder scene(int id);
}
