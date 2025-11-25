import 'package:flutter_dmx/src/business/repositories/native_repository.dart';

class SetIpAddress {
  final NativeRepository repository;
  SetIpAddress(this.repository);

  Future<bool> call(String ipAddress) async =>
      await repository.setIpAddress(ipAddress);
}
