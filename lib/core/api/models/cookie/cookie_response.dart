import 'package:freezed_annotation/freezed_annotation.dart';

part 'cookie_response.freezed.dart';
part 'cookie_response.g.dart';

@freezed
abstract class CookieResponse with _$CookieResponse {
  const factory CookieResponse({
    required Map<String, String> cookies,
    String? error,
  }) = _CookieResponse;

  factory CookieResponse.fromJson(Map<String, dynamic> json) =>
      _$CookieResponseFromJson(json);
}
