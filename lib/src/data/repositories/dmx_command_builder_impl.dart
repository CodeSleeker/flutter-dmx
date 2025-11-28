import 'package:flutter_dmx/flutter_dmx.dart';
import 'package:flutter_dmx/src/business/repositories/dmx_command_builder.dart';

class DmxCommandBuilderImpl implements DmxCommandBuilder {
  DmxColor? _color;
  int? _brightness;
  final FlutterDmx _plugin;

  DmxCommandBuilderImpl(this._plugin);

  @override
  DmxCommandBuilderImpl color(DmxColor color) {
    _color = color;
    return this;
  }

  @override
  DmxCommandBuilderImpl brightness(int value) {
    _brightness = value.clamp(0, 255);
    return this;
  }

  @override
  Future<bool> sendById(int id) async {
    return _plugin.controlById(
      DmxCommand(
        id: id,
        brightness: _brightness ?? 0,
        color: _color ?? DmxColor.white,
      ),
    );
  }

  @override
  Future<bool> sendByArea(String area) async {
    return _plugin.controlByArea(
      DmxCommand(
        area: area,
        brightness: _brightness ?? 0,
        color: _color ?? DmxColor.white,
      ),
    );
  }

  @override
  Future<bool> sendByName(String name) async {
    return _plugin.controlByName(
      DmxCommand(
        brightness: _brightness ?? 0,
        color: _color ?? DmxColor.white,
        name: name,
      ),
    );
  }
}
