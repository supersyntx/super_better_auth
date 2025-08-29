import 'dart:developer';

import 'package:example/organization_example.dart';
import 'package:example/cookie_example.dart';
import 'package:flutter/material.dart';
import 'package:super_better_auth/super_better_auth.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SuperBetterAuth.initialize(url: 'http://localhost:3000/api/auth');
  await dotenv.load();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BetterAuthProvider(
      child: MaterialApp(
        title: 'BetterAuth',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const MyHomePage(title: 'Better Auth'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: BetterAuthConsumer(
        builder: (context, client) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 8,
              children: <Widget>[
                FilledButton(
                  onPressed: () async {
                    final result = await client.signIn.email(
                      email: "test@mail.com",
                      password: "123456788",
                    );
                    if (result.data != null) {
                      debugPrint(result.data.toString());
                    } else {
                      debugPrint(result.error?.message);
                    }
                  },
                  child: Text("Sign-in"),
                ),

                FilledButton(
                  onPressed: () async {
                    final result = await client.getSession();
                    if (result.data != null) {
                      debugPrint(result.data.toString());
                    } else {
                      debugPrint(result.error?.message);
                    }
                  },
                  child: Text("GetSession"),
                ),
                FilledButton(
                  onPressed: () async {
                    // Demonstrate getCookie functionality
                    try {
                      // Get all cookies
                      final allCookies = await client.getCookies();
                      debugPrint("All cookies: $allCookies");
                      
                      // Get auth-related cookies
                      final authCookies = await client.getAuthCookies();
                      debugPrint("Auth cookies: $authCookies");
                      
                      // Get a specific cookie
                      final sessionCookie = await client.getCookie('better-auth.session_token');
                      debugPrint("Session cookie: $sessionCookie");
                      
                      // Check if a cookie exists
                      final hasSession = await client.hasCookie('better-auth.session_token');
                      debugPrint("Has session cookie: $hasSession");
                      
                    } catch (e) {
                      debugPrint("Error getting cookies: $e");
                    }
                  },
                  child: Text("GetCookies"),
                ),
                FilledButton(
                  onPressed: () {
                    client.signOut();
                  },
                  child: Text("SignOut"),
                ),
                FilledButton(
                  onPressed: () async {
                    final res = await client.signIn.social(
                      provider: 'github',
                      disableRedirect: true,
                      callbackUrlScheme: "myapp",
                    );
                  },
                  child: Text("Github"),
                ),

                FilledButton(
                  onPressed: () async {
                    final result = await client.signUp.email(
                      name: "test",
                      email: "test@mail.com",
                      password: "123456788",
                    );
                    if (result.data != null) {
                      debugPrint(result.data.toString());
                    } else {
                      debugPrint(result.error?.message);
                    }
                  },
                  child: Text("SignUp"),
                ),
                FilledButton(
                  onPressed: () async {
                    final result = await client.getSession();
                    log(result.data.toString());
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const OrganizationExample(),
                      ),
                    );
                  },
                  child: Text("Organization"),
                ),
                FilledButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const CookieExample(),
                      ),
                    );
                  },
                  child: Text("Cookie Management"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
