import 'package:flutter/material.dart';
import 'package:flutter_better_auth/core/api/models/result/result.dart';
import 'package:flutter_better_auth/core/api/models/session/session_response.dart';
import 'package:flutter_better_auth/core/api/models/sign_in/email/sign_in_email_body.dart';
import 'package:flutter_better_auth/core/api/models/sign_in/email/sign_in_email_response.dart';
import 'package:flutter_better_auth/flutter_better_auth.dart';
import 'package:flutter_better_auth/presentation/better_auth_consumer.dart';
import 'package:flutter_better_auth/presentation/better_auth_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterBetterAuth.initialize(baseUrl: 'http://10.0.2.2:3000/api/auth');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
              children: <Widget>[
                FilledButton(
                  onPressed: () {
                    client
                        .signInWithEmail(
                          body: SignInEmailBody(
                            email: "tsiresymila@gmail.com",
                            password: "12345678",
                          ),
                        )
                        .then((result) {
                          if (result is Success<SignInEmailResponse>) {
                            debugPrint(result.data.toString());
                          } else {
                            debugPrint(
                              (result as Failure<SignInEmailResponse>).message,
                            );
                          }
                        });
                  },
                  child: Text("Sign-in"),
                ),

                FilledButton(
                  onPressed: () {
                    client.getSession().then((result) {
                      if (result is Success<SessionResponse>) {
                        debugPrint(result.data.toString());
                      } else {
                        debugPrint(
                          (result as Failure<SessionResponse>).message,
                        );
                      }
                    });
                  },
                  child: Text("GetSession"),
                ),

                FilledButton(
                  onPressed: () {
                    client.signOut();
                  },
                  child: Text("SignOut"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
