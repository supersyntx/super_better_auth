import 'package:flutter/cupertino.dart';
import 'package:super_better_auth/super_better_auth.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Test Flutter better Auth", () {
    test('Test singleton', () async {
      WidgetsFlutterBinding.ensureInitialized();
      await SuperBetterAuth.initialize(url: "http://10.2.2.0");
      final SuperBetterAuthClient = SuperBetterAuth.client;
      final SuperBetterAuthClient2 = SuperBetterAuth.client;
      expect(SuperBetterAuthClient, SuperBetterAuthClient2);
    });
  });
}
