import 'package:freezed_annotation/freezed_annotation.dart';

part 'unlink_account_body.freezed.dart';

part 'unlink_account_body.g.dart';

@freezed
abstract class UnlinkAccountBody with _$UnlinkAccountBody {
  const factory UnlinkAccountBody({
    required String providerId,
    String? accountId,
  }) = _UnlinkAccountBody;

  factory UnlinkAccountBody.fromJson(Map<String, dynamic> json) =>
      _$UnlinkAccountBodyFromJson(json);
}
