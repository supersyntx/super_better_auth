import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_id_token.freezed.dart';
part 'social_id_token.g.dart';

@freezed
abstract class SocialIdToken with _$SocialIdToken {
  const factory SocialIdToken({
    required String token,
    String? nonce,
    String? accessToken,
    String? refreshToken,
    int? expiresAt,
}) = _SocialIdToken;

  factory SocialIdToken.fromJson(Map<String, dynamic> json) =>
      _$SocialIdTokenFromJson(json);
}
