import 'package:flutter_dmx/src/business/entities/dmx_packet.dart';
import 'package:flutter_dmx/src/business/repositories/native_repository.dart';

class SendPackets {
  final NativeRepository repository;
  SendPackets(this.repository);

  Future<bool> call(List<DmxPacket> packets) async =>
      await repository.sendPackets(packets);
}
