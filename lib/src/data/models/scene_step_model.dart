import 'package:flutter_dmx/src/business/entities/scene_step.dart';
import 'package:flutter_dmx/src/data/models/dmx_command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scene_step_model.freezed.dart';
part 'scene_step_model.g.dart';

@freezed
abstract class SceneStepModel with _$SceneStepModel {
  const factory SceneStepModel({
    required int durationMs,
    required List<DmxCommandModel> commands,
  }) = _SceneStepModel;

  factory SceneStepModel.fromJson(Map<String, dynamic> json) =>
      _$SceneStepModelFromJson(json);

  factory SceneStepModel.fromEntity(SceneStep entity) {
    return SceneStepModel(
      durationMs: entity.durationMs,
      commands: entity.commands
          .map((c) => DmxCommandModel.fromEntity(c))
          .toList(),
    );
  }
}

extension SceneStepModelx on SceneStepModel {
  SceneStep toEntity() {
    return SceneStep(
      durationMs: durationMs,
      commands: commands.map((c) => c.toEntity()).toList(),
    );
  }
}
