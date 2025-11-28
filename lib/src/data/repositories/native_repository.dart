import 'dart:convert';

import 'package:flutter_dmx/src/business/data_sources/native_data_source.dart';
import 'package:flutter_dmx/src/business/entities/dmx_fixture.dart';
import 'package:flutter_dmx/src/business/entities/dmx_packet.dart';
import 'package:flutter_dmx/src/business/entities/dmx_command.dart';
import 'package:flutter_dmx/src/business/repositories/native_repository.dart';
import 'package:flutter_dmx/src/core/constants/dmx_color.dart';
import 'package:flutter_dmx/src/core/constants/dmx_color_library.dart';
import 'package:flutter_dmx/src/core/dmx/logger.dart';
import 'package:flutter_dmx/src/data/models/dmx_fixture_model.dart';
import 'package:flutter_dmx/src/data/models/dmx_packet.dart';
import 'package:flutter_dmx/src/data/models/dmx_command.dart';

class NativeRepositoryImpl implements NativeRepository {
  final NativeDataSource dataSource;
  NativeRepositoryImpl({required this.dataSource});

  @override
  Future<bool> setData(DmxFixture data) async {
    final dataString = jsonEncode(DmxFixtureModel.fromEntity(data));
    DmxLogger.log("Set data -> $dataString");
    return await dataSource.sendData('data', dataString);
  }

  @override
  Future<bool> setIpAddress(String ipAddress) async {
    DmxLogger.log('Set ip address -> $ipAddress');
    return await dataSource.sendData('ipAddress', ipAddress);
  }

  @override
  Future<bool> sendPackets(List<DmxPacket> packets) async {
    final packetsString = jsonEncode(
      packets.map((p) => DmxPacketModel.fromEntity(p).toJson()).toList(),
    );
    DmxLogger.log("Send packets -> $packetsString");
    return await dataSource.sendData('packet', packetsString);
  }

  @override
  Stream<List<DmxFixture>> get onDmxList => dataSource.onDmxList;

  @override
  Future<bool> controlByArea(DmxCommand command) async {
    DmxLogger.log(
      "Control by area ${command.area} "
      "color=${command.color.name} brightness=${command.brightness}%",
    );
    final commandString = jsonEncode(DmxCommandModel.fromEntity(command));
    return await dataSource.sendData('controlByArea', commandString);
  }

  @override
  Future<bool> controlById(DmxCommand command) async {
    DmxLogger.log(
      "Control by id ${command.id} "
      "color=${command.color.name} brightness=${command.brightness}%",
    );
    final commandString = jsonEncode(DmxCommandModel.fromEntity(command));
    return await dataSource.sendData('controlById', commandString);
  }

  @override
  Future<bool> controlByName(DmxCommand command) async {
    DmxLogger.log(
      "Control by name ${command.name} "
      "color=${command.color.name} brightness=${command.brightness}%",
    );
    final commandString = jsonEncode(DmxCommandModel.fromEntity(command));
    return await dataSource.sendData('controlByName', commandString);
  }

  @override
  Future<bool> turnAllOff() async {
    DmxLogger.log('Turn off all fixtures');
    return await dataSource.send('turnAllOff');
  }

  @override
  Future<bool> setAllBrightness(int value) async {
    DmxLogger.log('Set all fixtures to brightness $value%');
    return await dataSource.sendData('setAllBrightness', value);
  }

  @override
  Future<bool> setAllColor(DmxColor color) async {
    DmxLogger.log('Set all fixtures color to ${color.name}');
    return await dataSource.sendData('setAllColor', color.data.rgb.toString());
  }

  @override
  Future<bool> turnAllOn() async {
    DmxLogger.log('Turn on all fixtures');
    return await dataSource.send('turnAllOn');
  }

  @override
  void setLogging(bool enable) {
    dataSource.sendData('setLogging', enable);
  }
}
