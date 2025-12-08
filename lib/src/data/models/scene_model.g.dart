// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scene_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SceneModel _$SceneModelFromJson(Map<String, dynamic> json) => _SceneModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  steps: (json['steps'] as List<dynamic>)
      .map((e) => SceneStepModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  loop: json['loop'] as bool,
);

Map<String, dynamic> _$SceneModelToJson(_SceneModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'steps': instance.steps,
      'loop': instance.loop,
    };
