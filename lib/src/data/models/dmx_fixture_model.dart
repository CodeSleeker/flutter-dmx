import 'package:flutter_dmx/src/business/entities/dmx_fixture.dart';
import 'package:flutter_dmx/src/core/constants/address_mode.dart';
import 'package:flutter_dmx/src/core/constants/color_mode.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dmx_fixture_model.freezed.dart';
part 'dmx_fixture_model.g.dart';

@freezed
abstract class DmxFixtureModel with _$DmxFixtureModel {
  const factory DmxFixtureModel({
    required int id,
    required String name,
    required int address,
    required String area,
    required ColorMode colorMode,
    required int channel,
    int? count,
    AddressMode? addressMode,
  }) = _DmxFixtureModel;

  factory DmxFixtureModel.fromJson(Map<String, dynamic> json) =>
      _$DmxFixtureModelFromJson(json);

  factory DmxFixtureModel.fromEntity(DmxFixture entity) {
    return DmxFixtureModel(
      id: entity.id,
      name: entity.name,
      address: entity.address,
      area: entity.area,
      colorMode: entity.colorMode,
      channel: entity.channel,
      count: entity.count,
      addressMode: entity.addressMode,
    );
  }
}

extension DmxFixtureModelX on DmxFixtureModel {
  DmxFixture toEntity() {
    return DmxFixture(
      id: id,
      address: address,
      area: area,
      colorMode: colorMode,
      name: name,
      channel: channel,
      count: count,
      addressMode: addressMode,
    );
  }
}
