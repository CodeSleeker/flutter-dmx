import 'package:flutter_dmx/flutter_dmx.dart';
import 'package:flutter_dmx/src/business/repositories/scene_command_builder.dart';

class SceneCommandBuilderImpl implements SceneCommandBuilder {
  final FlutterDmx plugin;
  final int sceneId;
  SceneCommandBuilderImpl(this.plugin, this.sceneId);

  @override
  Future<bool> play() async {
    return await plugin.playScene(sceneId);
  }

  @override
  Future<bool> stop() async {
    return await plugin.stopScene(sceneId);
  }
}
