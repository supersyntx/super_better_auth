import 'package:flutter/material.dart';
import 'package:flutter_better_auth/core/api/better_auth_client.dart';
import 'package:flutter_better_auth/presentation/better_auth_inherit.dart';

class BetterAuthConsumer extends StatefulWidget {
  final Widget Function(BuildContext context, BetterAuthClient client) builder;

  const BetterAuthConsumer({super.key, required this.builder});

  @override
  State<BetterAuthConsumer> createState() => _BetterAuthConsumerState();
}

class _BetterAuthConsumerState extends State<BetterAuthConsumer> {
  @override
  Widget build(BuildContext context) {
    return widget.builder(context, BetterAuthInherit.of(context));
  }
}
