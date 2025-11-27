import 'package:flutter_dmx/flutter_dmx.dart';

abstract class DmxCommandBuilder {
  DmxCommandBuilder color(DmxColor color);
  DmxCommandBuilder brightness(int value);

  Future<bool> sendById(int id);
  Future<bool> sendByArea(String area);
  Future<bool> sendByName(String name);
}
