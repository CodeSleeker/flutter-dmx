import 'package:flutter_dmx/src/business/dmx_listener.dart';
import 'package:flutter_dmx/src/business/entities/dmx_fixture.dart';
import 'package:flutter_dmx/src/business/entities/dmx_packet.dart';
import 'package:flutter_dmx/src/business/entities/dmx_command.dart';
import 'package:flutter_dmx/src/business/flutter_dmx.dart';
import 'package:flutter_dmx/src/business/repositories/dmx_command_builder.dart';
import 'package:flutter_dmx/src/business/repositories/native_repository.dart';
import 'package:flutter_dmx/src/core/constants/dmx_color.dart';
import 'package:flutter_dmx/src/data/repositories/dmx_command_builder_impl.dart';
import 'package:flutter_dmx/src/data/data_sources/native_data_source.dart';
import 'package:flutter_dmx/src/data/repositories/native_repository.dart';

class FlutterDmxImpl implements FlutterDmx {
  final NativeRepository _repo;
  DmxListener? dmxListener;

  FlutterDmxImpl._(this._repo) {
    _repo.onDmxList.listen((data) {
      dmxListener?.onDmxList(data);
    });
  }

  factory FlutterDmxImpl() {
    final ds = NativeDataSourceImpl();
    final repo = NativeRepositoryImpl(dataSource: ds);
    return FlutterDmxImpl._(repo);
  }

  @override
  Future<bool> setData(DmxFixture data) async => await _repo.setData(data);

  @override
  Future<bool> sendPackets(List<DmxPacket> packets) async =>
      await _repo.sendPackets(packets);

  @override
  Future<bool> setIpAddress(String ip) async => await _repo.setIpAddress(ip);

  @override
  Stream<List<DmxFixture>> get dmxList => _repo.onDmxList;

  @override
  Future<bool> controlByArea(DmxCommand command) async =>
      await _repo.controlByArea(command);

  @override
  Future<bool> controlById(DmxCommand command) async =>
      await _repo.controlById(command);

  @override
  void setListener(DmxListener listener) {
    dmxListener = listener;
  }

  @override
  Future<bool> controlByName(DmxCommand command) async =>
      await _repo.controlByName(command);

  @override
  DmxCommandBuilder get set => DmxCommandBuilderImpl(this);

  @override
  Future<bool> setAllBrightness(int value) async =>
      await _repo.setAllBrightness(value);

  @override
  Future<bool> setAllColor(DmxColor color) async =>
      await _repo.setAllColor(color);

  @override
  Future<bool> turnAllOff() async => await _repo.turnAllOff();

  @override
  Future<bool> turnAllOn() async => await _repo.turnAllOn();
}
