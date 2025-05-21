import 'package:flutter/material.dart';
import 'package:flutter_better_auth/flutter_better_auth.dart';
import 'package:flutter_better_auth/presentation/better_auth_consumer.dart';
import 'package:flutter_better_auth/presentation/better_auth_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterBetterAuth.initialize(url: 'http://10.0.2.2:3000/api/auth');
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
              children: <Widget>[
                FilledButton(
                  onPressed: () {
                    client.signIn
                        .email(
                          body: SignInEmailBody(
                            email: "test@mail.com",
                            password: "123456788",
                          ),
                        )
                        .then((result) {
                          if (result is Success<SignInEmailResponse>) {
                            debugPrint(result.data.toString());
                          } else {
                            debugPrint(
                              (result as Failure<SignInEmailResponse>)
                                  .error
                                  .message,
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
                          (result as Failure<SessionResponse>).error.message,
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
                FilledButton(
                  onPressed: () {
                    client.signUp.email(body: SignUpBody(
                      name: "test",
                      email: "test@mail.com",
                      password: "123456788"
                    )).then((result) {
                      if (result is Success<SignUpResponse>) {
                        debugPrint(result.data.toString());
                      } else {
                        debugPrint(
                          (result as Failure<SignUpResponse>).error.message,
                        );
                      }
                    });
                  },
                  child: Text("SignUp"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
