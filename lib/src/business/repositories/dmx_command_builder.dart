import 'package:flutter_dmx/flutter_dmx.dart';

abstract class DmxCommandBuilder {
  DmxCommandBuilder color(DmxColor color);
  DmxCommandBuilder brightness(int value);
  DmxCommandBuilder index(int index);

  Future<bool> sendById(int id);
  Future<bool> sendByArea(String area);
  Future<bool> sendByName(String name);
}
