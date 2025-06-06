import 'package:freezed_annotation/freezed_annotation.dart';

import '../jwk_key/jwt_key.dart';

part 'jwt_key_response.freezed.dart';
part 'jwt_key_response.g.dart';

@freezed
abstract class JwtKeyResponse with _$JwtKeyResponse {
  const factory JwtKeyResponse({required List<JwtKey> keys}) = _JwtKeyResponse;

  factory JwtKeyResponse.fromJson(Map<String, dynamic> json) =>
      _$JwtKeyResponseFromJson(json);
}
