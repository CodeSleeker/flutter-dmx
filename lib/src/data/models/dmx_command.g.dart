// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dmx_command.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DmxCommandModel _$DmxCommandModelFromJson(Map<String, dynamic> json) =>
    _DmxCommandModel(
      brightness: (json['brightness'] as num).toInt(),
      color: $enumDecode(_$DmxColorEnumMap, json['color']),
      id: (json['id'] as num?)?.toInt(),
      area: json['area'] as String?,
    );

Map<String, dynamic> _$DmxCommandModelToJson(_DmxCommandModel instance) =>
    <String, dynamic>{
      'brightness': instance.brightness,
      'color': _$DmxColorEnumMap[instance.color]!,
      'id': instance.id,
      'area': instance.area,
    };

const _$DmxColorEnumMap = {
  DmxColor.red: 'red',
  DmxColor.green: 'green',
  DmxColor.blue: 'blue',
  DmxColor.white: 'white',
  DmxColor.warmWhite: 'warmWhite',
  DmxColor.coldWhite: 'coldWhite',
  DmxColor.amber: 'amber',
  DmxColor.lime: 'lime',
  DmxColor.cyan: 'cyan',
  DmxColor.magenta: 'magenta',
  DmxColor.yellow: 'yellow',
  DmxColor.orange: 'orange',
  DmxColor.pink: 'pink',
  DmxColor.purple: 'purple',
  DmxColor.uv: 'uv',
  DmxColor.royalBlue: 'royalBlue',
  DmxColor.deepRed: 'deepRed',
  DmxColor.deepGreen: 'deepGreen',
  DmxColor.deepBlue: 'deepBlue',
};
