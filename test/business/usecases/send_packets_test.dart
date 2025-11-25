import 'package:flutter_dmx/flutter_dmx.dart';
import 'package:flutter_dmx/src/business/repositories/native_repository.dart';
import 'package:flutter_dmx/src/business/usecases/send_packets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockNativeRepository extends Mock implements NativeRepository {}

void main() {
  late MockNativeRepository mockRepo;
  late SendPackets useCase;

  setUp(() {
    mockRepo = MockNativeRepository();
    useCase = SendPackets(mockRepo);
  });

  group('sendDmxPackets', () {
    test('should send dmx packets and retrurn true', () async {
      final packets = [
        DmxPacket(address: 1, byteData: [255]),
      ];

      when(() => mockRepo.sendPackets(packets)).thenAnswer((_) async => true);

      final result = await useCase(packets);

      expect(result, isTrue);

      verify(() => mockRepo.sendPackets(packets)).called(1);
      verifyNoMoreInteractions(mockRepo);
    });

    test('should send dmx packets and retrurn false', () async {
      final packets = [
        DmxPacket(address: 1, byteData: [255]),
      ];

      when(() => mockRepo.sendPackets(packets)).thenAnswer((_) async => false);

      final result = await useCase(packets);

      expect(result, isFalse);

      verify(() => mockRepo.sendPackets(packets)).called(1);
      verifyNoMoreInteractions(mockRepo);
    });
  });
}
