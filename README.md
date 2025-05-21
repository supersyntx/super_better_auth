# Dart/Flutter BetterAuth

[Better-Auth](https://www.better-auth.com) client for Dart and Flutter.

## Getting Started

Add `flutter_better_auth` to your project dependencies:

```sh
flutter pub add flutter_better_auth
```

Or manually add it to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_better_auth: <latest_version>
```

## Features

- ✅ Default API support
- ✅ Social authentication
- ✅ Email authentication
- ✅ Phone number authentication
- ✅ Username authentication
- ✅ Anonymous authentication
- ✅ Admin
- ⬜ JWT
- ⬜ Two-Factor Authentication
- ⬜ Email OTP
- ⬜ API Key
- ⬜ Organization
- ⬜ One-time-token

## Usage

Import the package in your `main.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_better_auth/flutter_better_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterBetterAuth.initialize(url: 'api_url');
  runApp(const MyApp());
}
```

Wrap your `MaterialApp` with `BetterAuthProvider`:

```dart
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
```

Access BetterAuth client using `BetterAuthConsumer`:

```dart
BetterAuthConsumer
(
builder: (context, client) {
return Widget();
},
)
```

Or directly via:

```dart

final client = FlutterBetterAuth.getClient();
```

## Example

```dart
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
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
                    client.signIn.email(
                      body: SignInEmailBody(
                        email: "test@mail.com",
                        password: "123456788",
                      ),
                    ).then((result) {
                      if (result is Success<SignInEmailResponse>) {
                        debugPrint(result.data.toString());
                      } else {
                        debugPrint(
                          (result as Failure<SignInEmailResponse>).error.message,
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
                    client.signUp.email(
                      body: SignUpBody(
                        name: "test",
                        email: "test@mail.com",
                        password: "123456788",
                      ),
                    ).then((result) {
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
```

## Social Authentication

For social authentication, it is currently recommended to use `idToken`.

## Testing

This package is still under development and not fully tested. Use with caution.

## Author

[Tsiresy Milà](https://tsiresymila.vercel.app)