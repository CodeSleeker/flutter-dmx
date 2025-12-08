import 'package:flutter_dmx/flutter_dmx.dart';

abstract class NativeRepository {
  Future<bool> setIpAddress(String ipAddress);
  Future<bool> setUniverse(int universe);

  Future<bool> setData(DmxFixture data);
  Future<bool> setScene(Scene scene);
  Future<bool> sendPackets(List<DmxPacket> packets);

  Future<bool> controlByArea(DmxCommand command);
  Future<bool> controlById(DmxCommand command);
  Future<bool> controlByName(DmxCommand command);

  Future<bool> turnAllOff();
  Future<bool> turnAllOn();
  Future<bool> setAllBrightness(int value);
  Future<bool> setAllColor(DmxColor color);

  Future<bool> playScene(int id);
  Future<bool> stopScene(int id);

  void setLogging(bool enable);

  Stream<List<DmxFixture>> get onDmxList;
  Stream<List<Scene>> get onSceneList;
}
