// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dmx_packet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DmxPacketModel _$DmxPacketModelFromJson(Map<String, dynamic> json) =>
    _DmxPacketModel(
      address: (json['address'] as num).toInt(),
      byteData: (json['byteData'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      index: (json['index'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DmxPacketModelToJson(_DmxPacketModel instance) =>
    <String, dynamic>{
      'address': instance.address,
      'byteData': instance.byteData,
      'index': instance.index,
    };
