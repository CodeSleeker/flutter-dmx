import 'package:flutter_dmx/src/business/data_sources/native_data_source.dart';
import 'package:flutter_dmx/src/data/repositories/native_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockNativeDataSource extends Mock implements NativeDataSource {}

void main() {
  late NativeRepositoryImpl repository;
  late MockNativeDataSource mockNativeDataSource;

  setUp(() {
    mockNativeDataSource = MockNativeDataSource();
    repository = NativeRepositoryImpl(dataSource: mockNativeDataSource);
  });
  group('NativeRepositoryImpl', () {
    test('Should return true when datasource returns true', () async {
      when(
        () => mockNativeDataSource.sendData('ipAddress', '192.168.1.112'),
      ).thenAnswer((_) async => true);
      final result = await repository.setIpAddress('192.168.1.112');
      expect(result, isTrue);
      verify(
        () => mockNativeDataSource.sendData('ipAddress', '192.168.1.112'),
      ).called(1);
    });

    test('should return false when datasource returns false', () async {
      // arrange
      when(
        () => mockNativeDataSource.sendData(any(), any()),
      ).thenAnswer((_) async => false);

      // act
      final result = await repository.setIpAddress('192.168.1.1');

      // assert
      expect(result, isFalse);
    });
  });
}
