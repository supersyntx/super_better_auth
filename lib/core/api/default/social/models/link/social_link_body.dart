import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_link_body.freezed.dart';

part 'social_link_body.g.dart';

@freezed
abstract class SocialLinkBody with _$SocialLinkBody {
  const factory SocialLinkBody({
    String? callbackURL,
    String? scopes,
    required String provider,
  }) = _SocialLinkBody;

  factory SocialLinkBody.fromJson(Map<String, dynamic> json) =>
      _$SocialLinkBodyFromJson(json);
}
