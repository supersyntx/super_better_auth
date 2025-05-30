// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_social_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignInSocialBody _$SignInSocialBodyFromJson(Map<String, dynamic> json) =>
    _SignInSocialBody(
      callbackURL: json['callbackURL'] as String?,
      newUserCallbackURL: json['newUserCallbackURL'] as String?,
      errorCallbackURL: json['errorCallbackURL'] as String?,
      provider: json['provider'] as String,
      disableRedirect: json['disableRedirect'] as bool?,
      idToken:
          json['idToken'] == null
              ? null
              : SocialIdToken.fromJson(json['idToken'] as Map<String, dynamic>),
      scopes: json['scopes'] as String?,
      requestSignUp: json['requestSignUp'] as String?,
      loginHint: json['loginHint'] as String?,
    );

Map<String, dynamic> _$SignInSocialBodyToJson(_SignInSocialBody instance) =>
    <String, dynamic>{
      'callbackURL': instance.callbackURL,
      'newUserCallbackURL': instance.newUserCallbackURL,
      'errorCallbackURL': instance.errorCallbackURL,
      'provider': instance.provider,
      'disableRedirect': instance.disableRedirect,
      'idToken': instance.idToken?.toJson(),
      'scopes': instance.scopes,
      'requestSignUp': instance.requestSignUp,
      'loginHint': instance.loginHint,
    };
