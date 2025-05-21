// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unlink_account_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UnlinkAccountBody _$UnlinkAccountBodyFromJson(Map<String, dynamic> json) =>
    _UnlinkAccountBody(
      providerId: json['providerId'] as String,
      accountId: json['accountId'] as String?,
    );

Map<String, dynamic> _$UnlinkAccountBodyToJson(_UnlinkAccountBody instance) =>
    <String, dynamic>{
      'providerId': instance.providerId,
      'accountId': instance.accountId,
    };
