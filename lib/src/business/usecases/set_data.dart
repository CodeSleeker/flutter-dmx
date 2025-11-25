import 'package:flutter_dmx/src/business/entities/dmx_fixture.dart';
import 'package:flutter_dmx/src/business/repositories/native_repository.dart';

class SetData {
  final NativeRepository repository;
  SetData(this.repository);

  Future<bool> call(DmxFixture data) async => await repository.setData(data);
}
