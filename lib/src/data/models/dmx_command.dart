import 'package:flutter_dmx/flutter_dmx.dart';
import 'package:flutter_dmx/src/core/constants/dmx_color.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dmx_command.freezed.dart';
part 'dmx_command.g.dart';

@freezed
abstract class DmxCommandModel with _$DmxCommandModel {
  const factory DmxCommandModel({
    required int brightness,
    required DmxColor color,
    int? id,
    String? area,
  }) = _DmxCommandModel;

  factory DmxCommandModel.fromJson(Map<String, dynamic> json) =>
      _$DmxCommandModelFromJson(json);

  factory DmxCommandModel.fromEntity(DmxCommand entity) {
    return DmxCommandModel(
      brightness: entity.brightness,
      color: entity.color,
      id: entity.id,
      area: entity.area,
    );
  }
}
