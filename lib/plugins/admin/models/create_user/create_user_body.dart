import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user_body.freezed.dart';
part 'create_user_body.g.dart';

@freezed
abstract class CreateUserBody with _$CreateUserBody {
  const factory CreateUserBody({
    required String name,
    required String email,
    required String password,
    String? role,
    String? data,
  }) = _CreateUserBody;
  
  factory CreateUserBody.fromJson(Map<String, dynamic> json) =>
      _$CreateUserBodyFromJson(json);
}
