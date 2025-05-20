import 'package:freezed_annotation/freezed_annotation.dart';

part 'session.freezed.dart';

part 'session.g.dart';

@freezed
abstract class Session with _$Session {
  const factory Session({
    required String id,
    required String token,
    required DateTime expiresAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? ipAddress,
    String? userAgent,
    required String userId,
  }) = _Session;

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);
}
