// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scene_step_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SceneStepModel _$SceneStepModelFromJson(Map<String, dynamic> json) =>
    _SceneStepModel(
      durationMs: (json['durationMs'] as num).toInt(),
      commands: (json['commands'] as List<dynamic>)
          .map((e) => DmxCommandModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SceneStepModelToJson(_SceneStepModel instance) =>
    <String, dynamic>{
      'durationMs': instance.durationMs,
      'commands': instance.commands,
    };
