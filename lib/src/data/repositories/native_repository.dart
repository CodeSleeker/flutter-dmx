import 'dart:convert';

import 'package:flutter_dmx/src/business/data_sources/native_data_source.dart';
import 'package:flutter_dmx/src/business/entities/dmx_fixture.dart';
import 'package:flutter_dmx/src/business/entities/dmx_packet.dart';
import 'package:flutter_dmx/src/business/entities/dmx_command.dart';
import 'package:flutter_dmx/src/business/repositories/native_repository.dart';
import 'package:flutter_dmx/src/core/constants/dmx_color.dart';
import 'package:flutter_dmx/src/core/constants/dmx_color_library.dart';
import 'package:flutter_dmx/src/data/models/dmx_fixture_model.dart';
import 'package:flutter_dmx/src/data/models/dmx_packet.dart';
import 'package:flutter_dmx/src/data/models/dmx_command.dart';

class NativeRepositoryImpl implements NativeRepository {
  final NativeDataSource dataSource;
  NativeRepositoryImpl({required this.dataSource});

  @override
  Future<bool> setData(DmxFixture data) async {
    final dataString = jsonEncode(DmxFixtureModel.fromEntity(data));
    return await dataSource.sendString('data', dataString);
  }

  @override
  Future<bool> setIpAddress(String ipAddress) async =>
      await dataSource.sendString('ipAddress', ipAddress);

  @override
  Future<bool> sendPackets(List<DmxPacket> packets) async {
    final packetsString = jsonEncode(
      packets.map((p) => DmxPacketModel.fromEntity(p).toJson()).toList(),
    );
    return await dataSource.sendString('packet', packetsString);
  }

  @override
  Stream<List<DmxFixture>> get onDmxList => dataSource.onDmxList;

  @override
  Future<bool> controlByArea(DmxCommand command) async {
    final commandString = jsonEncode(DmxCommandModel.fromEntity(command));
    return await dataSource.sendString('controlByArea', commandString);
  }

  @override
  Future<bool> controlById(DmxCommand command) async {
    final commandString = jsonEncode(DmxCommandModel.fromEntity(command));
    return await dataSource.sendString('controlById', commandString);
  }

  @override
  Future<bool> controlByName(DmxCommand command) async {
    final commandString = jsonEncode(DmxCommandModel.fromEntity(command));
    return await dataSource.sendString('controlByName', commandString);
  }

  @override
  Future<bool> turnAllOff() async {
    return await dataSource.send('turnAllOff');
  }

  @override
  Future<bool> setAllBrightness(int value) async {
    return await dataSource.sendString('setAllBrightness', value.toString());
  }

  @override
  Future<bool> setAllColor(DmxColor color) async {
    return await dataSource.sendString(
      'setAllColor',
      color.data.rgb.toString(),
    );
  }

  @override
  Future<bool> turnAllOn() async {
    return await dataSource.send('turnAllOn');
  }
}
