import 'package:flutter_dmx/flutter_dmx.dart';

abstract class NativeRepository {
  Future<bool> setIpAddress(String ipAddress);
  Future<bool> setData(DmxFixture data);
  Future<bool> sendPackets(List<DmxPacket> packets);

  Future<bool> controlByArea(DmxCommand command);
  Future<bool> controlById(DmxCommand command);
  Future<bool> controlByName(DmxCommand command);

  Future<bool> turnAllOff();
  Future<bool> turnAllOn();
  Future<bool> setAllBrightness(int value);
  Future<bool> setAllColor(DmxColor color);

  void setLogging(bool enable);

  Stream<List<DmxFixture>> get onDmxList;
}
