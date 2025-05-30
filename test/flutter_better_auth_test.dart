import 'package:flutter/cupertino.dart';
import 'package:flutter_better_auth/flutter_better_auth.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Test Flutter better Auth", () {
    test('Test singleton', () async {
      WidgetsFlutterBinding.ensureInitialized();
      await FlutterBetterAuth.initialize(url: "http://10.2.2.0");
      final betterAuthClient = FlutterBetterAuth.client;
      final betterAuthClient2 = FlutterBetterAuth.client;
      expect(betterAuthClient, betterAuthClient2);
    });
  });
}
