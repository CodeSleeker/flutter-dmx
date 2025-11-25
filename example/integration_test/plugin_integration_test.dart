// This is a basic Flutter integration test.
//
// Since integration tests run in a full Flutter application, they can interact
// with the host side of a plugin implementation, unlike Dart unit tests.
//
// For more information about Flutter integration tests, please see
// https://flutter.dev/to/integration-testing

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:flutter_dmx/flutter_dmx.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('sendIpAddress test', (WidgetTester tester) async {
    final FlutterDmx plugin = FlutterDmx();
    final bool result = await plugin.setIpAddress('192.168.1.112');
    // The version string depends on the host platform running the test, so
    // just assert that some non-empty string is returned.
    expect(result, true);
  });
}
