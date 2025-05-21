// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TokenBody _$TokenBodyFromJson(Map<String, dynamic> json) => _TokenBody(
  providerId: json['providerId'] as String,
  accountId: json['accountId'] as String?,
  userId: json['userId'] as String?,
);

Map<String, dynamic> _$TokenBodyToJson(_TokenBody instance) =>
    <String, dynamic>{
      'providerId': instance.providerId,
      'accountId': instance.accountId,
      'userId': instance.userId,
    };
