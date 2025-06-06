// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_otp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PasswordOtpBody _$PasswordOtpBodyFromJson(Map<String, dynamic> json) =>
    _PasswordOtpBody(
      email: json['email'] as String,
      otp: json['otp'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$PasswordOtpBodyToJson(_PasswordOtpBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'otp': instance.otp,
      'password': instance.password,
    };
