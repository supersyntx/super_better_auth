import 'package:flutter/material.dart';
import 'package:super_better_auth/presentation/better_auth_inherit.dart';

import '../super_better_auth.dart';

class BetterAuthProvider extends StatefulWidget {
  final Widget child;

  const BetterAuthProvider({super.key, required this.child});

  @override
  State<BetterAuthProvider> createState() => _BetterAuthProviderState();
}

class _BetterAuthProviderState extends State<BetterAuthProvider> {
  @override
  Widget build(BuildContext context) {
    return BetterAuthInherit(
      client: SuperBetterAuth.client,
      child: Builder(
        builder: (context) {
          return widget.child;
        },
      ),
    );
  }
}
