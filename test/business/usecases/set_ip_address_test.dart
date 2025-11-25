import 'package:flutter_dmx/src/business/repositories/native_repository.dart';
import 'package:flutter_dmx/src/business/usecases/set_ip_address.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockNativeRepository extends Mock implements NativeRepository {}

void main() {
  late SetIpAddress useCase;
  late MockNativeRepository mockRepo;

  setUp(() {
    mockRepo = MockNativeRepository();
    useCase = SetIpAddress(mockRepo);
  });

  group('sendIpAddress', () {
    test('should send ip addess and return true', () async {
      when(
        () => mockRepo.setIpAddress('192.168.1.112'),
      ).thenAnswer((_) async => true);

      final result = await useCase('192.168.1.112');

      expect(result, isTrue);

      verify(() => mockRepo.setIpAddress('192.168.1.112')).called(1);
      verifyNoMoreInteractions(mockRepo);
    });

    test('should send ip addess and return false', () async {
      when(
        () => mockRepo.setIpAddress('192.168.1.112'),
      ).thenAnswer((_) async => false);

      final result = await useCase('192.168.1.112');

      expect(result, isFalse);

      verify(() => mockRepo.setIpAddress('192.168.1.112')).called(1);
      verifyNoMoreInteractions(mockRepo);
    });
  });
}
