import 'package:test/test.dart';
import 'package:uber_direct_api/uber_direct_api.dart';

void main() {
  group('UberDirectApi', () {
    test('can be instantiated', () {
      expect(
        UberDirectApi(
          accessToken: 'token',
        ),
        isNotNull,
      );
    });
  });
}
