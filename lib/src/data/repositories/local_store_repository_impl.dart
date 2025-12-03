import 'dart:convert';

import 'package:flutter_dmx/src/business/data_sources/local_store.dart';
import 'package:flutter_dmx/src/business/entities/dmx_fixture.dart';
import 'package:flutter_dmx/src/business/repositories/local_store_repository.dart';
import 'package:flutter_dmx/src/data/models/dmx_fixture_model.dart';

class LocalStoreRepositoryImpl implements LocalStoreRepository {
  final LocalStore store;
  LocalStoreRepositoryImpl({required this.store});
  @override
  Future<List<DmxFixture>> getDmxFixtures() async {
    final list = await store.getStringList('dmxFixtures');
    final listModel = list
        .map((l) => DmxFixtureModel.fromJson(jsonDecode(l)))
        .toList();
    return listModel.map((l) => l.toEntity()).toList();
  }

  @override
  Future<String> getIp() async {
    return await store.getString('ip');
  }

  @override
  Future<void> storeDmxFixture(DmxFixture fixture) async {
    final dmxList = await getDmxFixtures();

    final index = dmxList.indexWhere((f) => f.id == fixture.id);

    if (index >= 0) {
      dmxList[index] = fixture;
    } else {
      dmxList.insert(0, fixture);
    }

    final encoded = dmxList
        .map((f) => jsonEncode(DmxFixtureModel.fromEntity(f).toJson()))
        .toList();

    await store.setStringList('dmxFixtures', encoded);
  }

  @override
  Future<void> storeIp(String ip) async {
    await store.setString('ip', ip);
  }

  @override
  Future<int> getUniverse() async {
    final universe = await store.getString('universe');
    return universe.isEmpty ? -1 : int.parse(universe);
  }

  @override
  Future<void> storeUniverse(int universe) async {
    await store.setString('universe', universe.toString());
  }
}
