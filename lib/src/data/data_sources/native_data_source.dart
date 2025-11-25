import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_dmx/src/business/data_sources/native_data_source.dart';
import 'package:flutter_dmx/src/business/entities/dmx_fixture.dart';
import 'package:flutter_dmx/src/data/models/dmx_fixture_model.dart';

class NativeDataSourceImpl implements NativeDataSource {
  final _channel = MethodChannel('dmx');

  final _dmxListController = StreamController<List<DmxFixture>>.broadcast();

  NativeDataSourceImpl() {
    _channel.setMethodCallHandler((call) async {
      switch (call.method) {
        case 'dmx_list':
          try {
            final jsonList = call.arguments as List<dynamic>;
            final List<DmxFixtureModel> dmxList = jsonList
                .map((l) => Map<String, dynamic>.from(l as Map))
                .map((d) => DmxFixtureModel.fromJson(d))
                .toList();
            final dmxDataList = dmxList.map((l) => l.toEntity()).toList();
            _dmxListController.add(dmxDataList);
          } catch (e) {
            print(e);
          }
          break;
      }
    });
  }
  @override
  Future<bool> sendString(String method, String data) async {
    return await _channel.invokeMethod<bool>(method, data) ?? false;
  }

  @override
  Stream<List<DmxFixture>> get onDmxList => _dmxListController.stream;

  @override
  Future<bool> send(String method) async {
    return await _channel.invokeMethod<bool>(method) ?? false;
  }
}
