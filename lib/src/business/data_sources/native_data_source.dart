import 'package:flutter_dmx/flutter_dmx.dart';

abstract class NativeDataSource {
  Stream<List<DmxFixture>> get onDmxList;
  Stream<List<Scene>> get onSceneList;
  Future<bool> sendData(String method, dynamic data);
  Future<bool> send(String method);
}
