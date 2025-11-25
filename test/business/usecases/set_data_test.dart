import 'package:flutter_dmx/flutter_dmx.dart';
import 'package:flutter_dmx/src/business/repositories/native_repository.dart';
import 'package:flutter_dmx/src/business/usecases/set_data.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockNativeRepository extends Mock implements NativeRepository {}

void main() {
  late SetData useCase;
  late MockNativeRepository mockRepo;

  setUp(() {
    mockRepo = MockNativeRepository();
    useCase = SetData(mockRepo);
  });

  group('setData', () {
    test('should send dmx data and return true', () async {
      final data = DmxFixture(
        id: 0,
        address: 1,
        area: 'test',
        colorMode: ColorMode.rgbw,
        name: 'test',
        channel: 7,
      );

      when(() => mockRepo.setData(data)).thenAnswer((_) async => true);

      final result = await useCase(data);

      expect(result, isTrue);

      verify(() => mockRepo.setData(data)).called(1);
      verifyNoMoreInteractions(mockRepo);
    });

    test('should send dmx data and return false', () async {
      final data = DmxFixture(
        id: 0,
        address: 1,
        area: 'test',
        colorMode: ColorMode.rgbw,
        name: 'test',
        channel: 7,
      );

      when(() => mockRepo.setData(data)).thenAnswer((_) async => false);

      final result = await useCase(data);

      expect(result, isFalse);

      verify(() => mockRepo.setData(data)).called(1);
      verifyNoMoreInteractions(mockRepo);
    });
  });
}
