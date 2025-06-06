import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_account.freezed.dart';
part 'social_account.g.dart';

@freezed
abstract class SocialAccount with _$SocialAccount {
  const factory SocialAccount({
    required String id,
    required String provider,
    @Default(null) DateTime? createdAt,
    @Default(null) DateTime? updatedAt,
  }) = _SocialAccount;

  factory SocialAccount.fromJson(Map<String, dynamic> json) =>
      _$SocialAccountFromJson(json);
}
