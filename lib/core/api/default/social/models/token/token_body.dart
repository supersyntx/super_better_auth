import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_body.freezed.dart';

part 'token_body.g.dart';

@freezed
abstract class TokenBody with _$TokenBody {
  const factory TokenBody({
    required String providerId,
    String? accountId,
    String? userId,
  }) = _TokenBody;

  factory TokenBody.fromJson(Map<String, dynamic> json) =>
      _$TokenBodyFromJson(json);
}
