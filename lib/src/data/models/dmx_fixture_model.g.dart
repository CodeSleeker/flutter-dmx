// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dmx_fixture_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DmxFixtureModel _$DmxFixtureModelFromJson(Map<String, dynamic> json) =>
    _DmxFixtureModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      address: (json['address'] as num).toInt(),
      area: json['area'] as String,
      colorMode: $enumDecode(_$ColorModeEnumMap, json['colorMode']),
      channel: (json['channel'] as num).toInt(),
      count: (json['count'] as num?)?.toInt(),
      addressMode: $enumDecodeNullable(
        _$AddressModeEnumMap,
        json['addressMode'],
      ),
    );

Map<String, dynamic> _$DmxFixtureModelToJson(_DmxFixtureModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'area': instance.area,
      'colorMode': _$ColorModeEnumMap[instance.colorMode]!,
      'channel': instance.channel,
      'count': instance.count,
      'addressMode': _$AddressModeEnumMap[instance.addressMode],
    };

const _$ColorModeEnumMap = {
  ColorMode.rgb: 'rgb',
  ColorMode.rgbw: 'rgbw',
  ColorMode.white: 'white',
};

const _$AddressModeEnumMap = {
  AddressMode.seq: 'seq',
  AddressMode.shared: 'shared',
};
