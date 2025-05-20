// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_email_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChangeEmailBody _$ChangeEmailBodyFromJson(Map<String, dynamic> json) =>
    _ChangeEmailBody(
      newEmail: json['newEmail'] as String,
      callbackURL: json['callbackURL'] as String?,
    );

Map<String, dynamic> _$ChangeEmailBodyToJson(_ChangeEmailBody instance) =>
    <String, dynamic>{
      'newEmail': instance.newEmail,
      'callbackURL': instance.callbackURL,
    };
