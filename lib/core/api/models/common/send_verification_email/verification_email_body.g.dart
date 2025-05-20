// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification_email_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerificationEmailBody _$VerificationEmailBodyFromJson(
  Map<String, dynamic> json,
) => _VerificationEmailBody(
  email: json['email'] as String,
  callbackURL: json['callbackURL'] as String?,
);

Map<String, dynamic> _$VerificationEmailBodyToJson(
  _VerificationEmailBody instance,
) => <String, dynamic>{
  'email': instance.email,
  'callbackURL': instance.callbackURL,
};
