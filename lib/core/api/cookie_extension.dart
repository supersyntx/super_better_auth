import 'package:super_better_auth/core/super_better_auth.dart';
import 'package:super_better_auth/core/api/better_auth_client.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';

/// Extension to add cookie management functionality to SuperBetterAuthClient
extension CookieExtension on SuperBetterAuthClient {
  
  /// Get all stored cookies for the current domain
  /// Returns a map of cookie names to values
  Future<Map<String, String>> getCookies() async {
    try {
      final uri = Uri.parse(SuperBetterAuth.baseUrl);
      final cookieManager = SuperBetterAuth.dioClient.interceptors
          .whereType<CookieManager>()
          .firstOrNull;
      
      if (cookieManager == null) {
        return {};
      }
      
      final cookies = await cookieManager.cookieJar.loadForRequest(uri);
      final cookieMap = <String, String>{};
      
      for (final cookie in cookies) {
        cookieMap[cookie.name] = cookie.value;
      }
      
      return cookieMap;
    } catch (e) {
      return {};
    }
  }
  
  /// Get a specific cookie by name
  /// Returns the cookie value or null if not found
  Future<String?> getCookie(String name) async {
    final cookies = await getCookies();
    return cookies[name];
  }
  
  /// Get multiple cookies by names
  /// Returns a map with only the requested cookies (empty values for missing cookies)
  Future<Map<String, String?>> getCookiesByNames(List<String> names) async {
    final allCookies = await getCookies();
    final result = <String, String?>{};
    
    for (final name in names) {
      result[name] = allCookies[name];
    }
    
    return result;
  }
  
  /// Check if a specific cookie exists
  Future<bool> hasCookie(String name) async {
    final cookies = await getCookies();
    return cookies.containsKey(name);
  }
  
  /// Get authentication-related cookies commonly used by Better Auth
  /// Returns session, token, and other auth-related cookies
  Future<Map<String, String?>> getAuthCookies() async {
    final authCookieNames = [
      'better-auth.session_token',
      'better-auth.csrf_token', 
      'session',
      'token',
      'auth-token',
      'access_token',
      'refresh_token',
    ];
    
    return getCookiesByNames(authCookieNames);
  }
  
  /// Clear all cookies for the current domain
  Future<void> clearCookies() async {
    try {
      final uri = Uri.parse(SuperBetterAuth.baseUrl);
      final cookieManager = SuperBetterAuth.dioClient.interceptors
          .whereType<CookieManager>()
          .firstOrNull;
      
      if (cookieManager != null) {
        await cookieManager.cookieJar.delete(uri);
      }
    } catch (e) {
      // Silently handle errors
    }
  }
  
  /// Clear a specific cookie by name
  Future<void> clearCookie(String name) async {
    try {
      final uri = Uri.parse(SuperBetterAuth.baseUrl);
      final cookieManager = SuperBetterAuth.dioClient.interceptors
          .whereType<CookieManager>()
          .firstOrNull;
      
      if (cookieManager != null) {
        final cookies = await cookieManager.cookieJar.loadForRequest(uri);
        final updatedCookies = cookies.where((cookie) => cookie.name != name).toList();
        
        // Clear all cookies and re-save the ones we want to keep
        await cookieManager.cookieJar.delete(uri);
        if (updatedCookies.isNotEmpty) {
          await cookieManager.cookieJar.saveFromResponse(uri, updatedCookies);
        }
      }
    } catch (e) {
      // Silently handle errors
    }
  }
}
