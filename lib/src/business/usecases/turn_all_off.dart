import 'package:flutter_dmx/src/business/repositories/native_repository.dart';

class TurnAllOff {
  final NativeRepository repository;
  TurnAllOff(this.repository);

  Future<bool> call() async => await repository.turnAllOff();
}
