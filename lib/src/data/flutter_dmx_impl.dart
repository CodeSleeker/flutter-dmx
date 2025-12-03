import 'package:flutter_dmx/src/business/dmx_listener.dart';
import 'package:flutter_dmx/src/business/entities/dmx_fixture.dart';
import 'package:flutter_dmx/src/business/entities/dmx_packet.dart';
import 'package:flutter_dmx/src/business/entities/dmx_command.dart';
import 'package:flutter_dmx/src/business/flutter_dmx.dart';
import 'package:flutter_dmx/src/business/repositories/dmx_command_builder.dart';
import 'package:flutter_dmx/src/business/repositories/local_store_repository.dart';
import 'package:flutter_dmx/src/business/repositories/native_repository.dart';
import 'package:flutter_dmx/src/core/constants/dmx_color.dart';
import 'package:flutter_dmx/src/core/dmx/logger.dart';
import 'package:flutter_dmx/src/data/data_sources/local_store_impl.dart';
import 'package:flutter_dmx/src/data/repositories/dmx_command_builder_impl.dart';
import 'package:flutter_dmx/src/data/data_sources/native_data_source.dart';
import 'package:flutter_dmx/src/data/repositories/local_store_repository_impl.dart';
import 'package:flutter_dmx/src/data/repositories/native_repository.dart';

class FlutterDmxImpl implements FlutterDmx {
  final NativeRepository _repo;
  final LocalStoreRepository _localStore;
  DmxListener? dmxListener;

  FlutterDmxImpl._(this._repo, this._localStore) {
    _repo.onDmxList.listen((data) {
      dmxListener?.onDmxList(data);
    });
  }

  factory FlutterDmxImpl() {
    final ds = NativeDataSourceImpl();
    final repo = NativeRepositoryImpl(dataSource: ds);
    final store = LocalStoreImpl();
    final ls = LocalStoreRepositoryImpl(store: store);
    return FlutterDmxImpl._(repo, ls);
  }

  @override
  Future<bool> setData(DmxFixture data) async {
    _localStore.storeDmxFixture(data);
    return await _repo.setData(data);
  }

  @override
  Future<bool> sendPackets(List<DmxPacket> packets) async =>
      await _repo.sendPackets(packets);

  @override
  Future<bool> setIpAddress(String ip) async {
    _localStore.storeIp(ip);
    return await _repo.setIpAddress(ip);
  }

  @override
  Future<bool> setUniverse(int universe) async {
    _localStore.storeUniverse(universe);
    return await _repo.setUniverse(universe);
  }

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
    DmxLogger.log('Listener set');
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

  @override
  void enableLogging(bool enabled) {
    if (enabled) {
      DmxLogger.enable();
      DmxLogger.log('Logging enabled');
    } else {
      DmxLogger.log('Logging disabled');
      DmxLogger.disable();
    }
    _repo.setLogging(enabled);
  }

  @override
  void persist() async {
    DmxLogger.log('Persistence enabled');

    DmxLogger.log('Fetching data locally...');
    final dmxFixtures = await _localStore.getDmxFixtures();
    DmxLogger.log('Received local data, total count: ${dmxFixtures.length}');

    DmxLogger.log('Fetching ip address...');
    final ip = await _localStore.getIp();
    DmxLogger.log(
      ip.isEmpty ? 'Ip not stored locally' : 'Ip locally stored: $ip',
    );

    DmxLogger.log('Fetching universe');
    final universe = await _localStore.getUniverse();
    DmxLogger.log(
      universe >= 0 ? 'Universe not stored locally' : 'Universe locally stored',
    );

    for (final data in dmxFixtures) {
      await _repo.setData(data);
    }
    if (ip.isNotEmpty) {
      await _repo.setIpAddress(ip);
    }
    if (universe >= 0) {
      await _repo.setUniverse(universe);
    }
  }
}
