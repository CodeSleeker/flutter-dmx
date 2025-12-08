import 'package:flutter_dmx/src/business/entities/scene.dart';
import 'package:flutter_dmx/src/data/models/scene_step_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scene_model.freezed.dart';
part 'scene_model.g.dart';

@freezed
abstract class SceneModel with _$SceneModel {
  const factory SceneModel({
    required int id,
    required String name,
    required List<SceneStepModel> steps,
    required bool loop,
  }) = _SceneModel;

  factory SceneModel.fromJson(Map<String, dynamic> json) =>
      _$SceneModelFromJson(json);

  factory SceneModel.fromEntity(Scene entity) {
    return SceneModel(
      id: entity.id,
      name: entity.name,
      steps: entity.steps.map((s) => SceneStepModel.fromEntity(s)).toList(),
      loop: entity.loop,
    );
  }
}

extension SceneModelX on SceneModel {
  Scene toEntity() {
    return Scene(
      id: id,
      name: name,
      steps: steps.map((s) => s.toEntity()).toList(),
      loop: loop,
    );
  }
}
