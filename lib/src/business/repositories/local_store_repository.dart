import 'package:flutter_dmx/flutter_dmx.dart';

abstract class LocalStoreRepository {
  Future<void> storeIp(String ip);
  Future<String> getIp();

  Future<void> storeUniverse(int universe);
  Future<int> getUniverse();

  Future<void> storeDmxFixture(DmxFixture fixtures);
  Future<List<DmxFixture>> getDmxFixtures();
}
