// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dmx_command.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DmxCommandModel _$DmxCommandModelFromJson(Map<String, dynamic> json) =>
    _DmxCommandModel(
      brightness: (json['brightness'] as num).toInt(),
      color: (json['color'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      id: (json['id'] as num?)?.toInt(),
      area: json['area'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$DmxCommandModelToJson(_DmxCommandModel instance) =>
    <String, dynamic>{
      'brightness': instance.brightness,
      'color': instance.color,
      'id': instance.id,
      'area': instance.area,
      'name': instance.name,
    };
