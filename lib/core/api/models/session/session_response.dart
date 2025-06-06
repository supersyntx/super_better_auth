import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/session/session.dart';
import '../../../models/user/user.dart';

part 'session_response.freezed.dart';
part 'session_response.g.dart';

@freezed
abstract class SessionResponse with _$SessionResponse {
  const factory SessionResponse({
    required Session session,
    required User user,
    String? error,
    bool? isRegister,
  }) = _SessionResponse;

  factory SessionResponse.fromJson(Map<String, dynamic> json) =>
      _$SessionResponseFromJson(json);
}
