import 'package:flutter_dmx/flutter_dmx.dart';

abstract class NativeDataSource {
  Stream<List<DmxFixture>> get onDmxList;
  Future<bool> sendData(String method, dynamic data);
  Future<bool> send(String method);
}
