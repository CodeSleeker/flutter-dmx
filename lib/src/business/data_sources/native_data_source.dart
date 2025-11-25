import 'package:flutter_dmx/flutter_dmx.dart';

abstract class NativeDataSource {
  Stream<List<DmxFixture>> get onDmxList;
  Future<bool> sendString(String method, String data);
  Future<bool> send(String method);
}
