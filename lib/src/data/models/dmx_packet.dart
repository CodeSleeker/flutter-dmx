import 'package:flutter_dmx/src/business/entities/dmx_packet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dmx_packet.freezed.dart';
part 'dmx_packet.g.dart';

@freezed
abstract class DmxPacketModel with _$DmxPacketModel {
  const factory DmxPacketModel({
    required int address,
    required List<int> byteData,
    int? index,
  }) = _DmxPacketModel;

  factory DmxPacketModel.fromJson(Map<String, dynamic> json) =>
      _$DmxPacketModelFromJson(json);

  factory DmxPacketModel.fromEntity(DmxPacket entity) {
    return DmxPacketModel(
      address: entity.address,
      byteData: entity.byteData,
      index: entity.index,
    );
  }
}
