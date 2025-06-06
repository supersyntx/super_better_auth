import 'package:freezed_annotation/freezed_annotation.dart';

part 'ban_body.freezed.dart';
part 'ban_body.g.dart';

@freezed
abstract class BanBody with _$BanBody {
  const factory BanBody({
    required String userId,
    @Default("") String banReason,
    String? banExpiresIn,
  }) = _BanBody;

  factory BanBody.fromJson(Map<String, dynamic> json) =>
      _$BanBodyFromJson(json);
}
