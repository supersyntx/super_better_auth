import 'package:freezed_annotation/freezed_annotation.dart';

part 'callback_body.freezed.dart';
part 'callback_body.g.dart';

@freezed
abstract class CallbackBody with _$CallbackBody {
  const factory CallbackBody({
    String? code,
    String? state,
}) = _CallbackBody;

  factory CallbackBody.fromJson(Map<String, dynamic> json) =>
      _$CallbackBodyFromJson(json);
}
