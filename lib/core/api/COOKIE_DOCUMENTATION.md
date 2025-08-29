# Cookie Management for Super Better Auth

This extension provides comprehensive cookie management functionality for the Super Better Auth Flutter package, allowing you to access, manage, and clear stored authentication cookies.

## Features

### Cookie Access
- ✅ Get all stored cookies
- ✅ Get specific cookie by name  
- ✅ Get multiple cookies by names
- ✅ Get authentication-related cookies
- ✅ Check if a cookie exists

### Cookie Management
- ✅ Clear all cookies
- ✅ Clear specific cookie by name
- ✅ Automatic cookie storage via Dio interceptors

## Usage

### Basic Cookie Operations

```dart
import 'package:super_better_auth/super_better_auth.dart';

final client = SuperBetterAuth.client;

// Get all cookies
Map<String, String> allCookies = await client.getCookies();
print('All cookies: $allCookies');

// Get a specific cookie
String? sessionToken = await client.getCookie('better-auth.session_token');
print('Session token: $sessionToken');

// Check if a cookie exists
bool hasSessionCookie = await client.hasCookie('better-auth.session_token');
print('Has session cookie: $hasSessionCookie');
```

### Authentication Cookies

```dart
// Get common authentication cookies
Map<String, String?> authCookies = await client.getAuthCookies();
print('Auth cookies: $authCookies');

// This includes cookies like:
// - better-auth.session_token
// - better-auth.csrf_token
// - session
// - token
// - auth-token
// - access_token
// - refresh_token
```

### Get Multiple Cookies

```dart
// Get specific cookies by names
List<String> cookieNames = ['session', 'csrf_token', 'user_id'];
Map<String, String?> cookies = await client.getCookiesByNames(cookieNames);

for (String name in cookieNames) {
  print('$name: ${cookies[name] ?? "Not found"}');
}
```

### Cookie Management

```dart
// Clear all cookies
await client.clearCookies();

// Clear a specific cookie
await client.clearCookie('session');
```

### Error Handling

All cookie methods handle errors gracefully and return empty results rather than throwing exceptions:

```dart
try {
  final cookies = await client.getCookies();
  // Handle cookies
} catch (e) {
  // This will rarely happen as methods handle errors internally
  print('Unexpected error: $e');
}
```

## Implementation Details

### How It Works

The cookie extension uses the existing Dio cookie management infrastructure:

1. **Cookie Storage**: Cookies are stored using `dio_cookie_manager` and `CustomPersistCookieJar`
2. **Persistence**: Cookies are persisted using Hive storage on mobile/desktop
3. **Domain Scope**: Cookies are scoped to the Better Auth base URL domain
4. **Automatic Management**: Cookies are automatically saved/loaded with HTTP requests

### Cookie Storage Structure

Cookies are stored as:
```dart
{
  'name': 'cookie_name',
  'value': 'cookie_value',
  'expires': timestamp,
  'path': '/',
  'domain': 'your-domain.com',
  'httpOnly': false,
  'secure': true,
}
```

### Common Authentication Cookies

The `getAuthCookies()` method looks for these common authentication cookies:

- `better-auth.session_token` - Main session token
- `better-auth.csrf_token` - CSRF protection token
- `session` - Generic session cookie
- `token` - Generic auth token
- `auth-token` - Authentication token
- `access_token` - OAuth access token
- `refresh_token` - OAuth refresh token

## UI Integration

### Simple Cookie Display

```dart
FutureBuilder<Map<String, String>>(
  future: SuperBetterAuth.client.getCookies(),
  builder: (context, snapshot) {
    if (snapshot.hasData) {
      return Column(
        children: snapshot.data!.entries.map((entry) => 
          ListTile(
            title: Text(entry.key),
            subtitle: Text(entry.value),
          ),
        ).toList(),
      );
    }
    return CircularProgressIndicator();
  },
)
```

### Using the Example Widget

```dart
import 'cookie_example.dart';

// Navigate to cookie management screen
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => CookieExample()),
);
```

## Advanced Usage

### Custom Cookie Filtering

```dart
// Get only secure cookies
final allCookies = await client.getCookies();
final secureCookies = <String, String>{};

// Note: This extension doesn't expose cookie attributes like 'secure'
// For advanced filtering, you'd need to access the cookie jar directly
```

### Integration with Authentication Flow

```dart
// After login, check for auth cookies
void onLoginSuccess() async {
  final authCookies = await SuperBetterAuth.client.getAuthCookies();
  
  if (authCookies['better-auth.session_token'] != null) {
    print('Login successful, session cookie found');
  }
}

// Before logout, clear cookies
void onLogout() async {
  await SuperBetterAuth.client.clearCookies();
  print('All cookies cleared');
}
```

## Security Considerations

1. **Cookie Exposure**: Cookie values are exposed as plain strings - handle sensitive data carefully
2. **Storage Security**: Cookies are stored in device storage - consider encryption for sensitive apps
3. **Domain Scope**: Cookies are scoped to your Better Auth domain
4. **HTTPS Only**: In production, ensure cookies are only sent over HTTPS

## Example App

See `example/lib/cookie_example.dart` for a complete demonstration of all cookie management features, including:

- Cookie listing and viewing
- Authentication cookie highlighting  
- Cookie search and filtering
- Cookie clearing operations
- Error handling and user feedback

## API Reference

### Methods

| Method | Description | Returns |
|--------|-------------|---------|
| `getCookies()` | Get all stored cookies | `Future<Map<String, String>>` |
| `getCookie(String name)` | Get specific cookie by name | `Future<String?>` |
| `getCookiesByNames(List<String> names)` | Get multiple cookies | `Future<Map<String, String?>>` |
| `getAuthCookies()` | Get authentication cookies | `Future<Map<String, String?>>` |
| `hasCookie(String name)` | Check if cookie exists | `Future<bool>` |
| `clearCookies()` | Clear all cookies | `Future<void>` |
| `clearCookie(String name)` | Clear specific cookie | `Future<void>` |

### Error Handling

All methods handle errors gracefully:
- Return empty maps/null values on error
- No exceptions thrown under normal circumstances
- Safe to call without try-catch blocks
