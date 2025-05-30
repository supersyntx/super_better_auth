import 'package:freezed_annotation/freezed_annotation.dart';

import 'social_id_token.dart';

part 'sign_in_social_body.freezed.dart';
part 'sign_in_social_body.g.dart';

@freezed
abstract class SignInSocialBody with _$SignInSocialBody {
  const factory SignInSocialBody({
    String? callbackURL,
    String? newUserCallbackURL,
    String? errorCallbackURL,
    required String provider,
    bool? disableRedirect,
    SocialIdToken? idToken,
    String? scopes,
    String? requestSignUp,
    String? loginHint,
}) = _SignInSocialBody;

  factory SignInSocialBody.fromJson(Map<String, dynamic> json) =>
      _$SignInSocialBodyFromJson(json);
}
