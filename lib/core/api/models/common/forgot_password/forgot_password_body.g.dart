// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ForgotPasswordBody _$ForgotPasswordBodyFromJson(Map<String, dynamic> json) =>
    _ForgotPasswordBody(
      email: json['email'] as String,
      redirectTo: json['redirectTo'] as String?,
    );

Map<String, dynamic> _$ForgotPasswordBodyToJson(_ForgotPasswordBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'redirectTo': instance.redirectTo,
    };
