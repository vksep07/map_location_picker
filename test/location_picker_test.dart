import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:location_picker/location_picker.dart';

void main() {
  const MethodChannel channel = MethodChannel('location_picker');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await LocationPicker.platformVersion, '42');
  });
}
