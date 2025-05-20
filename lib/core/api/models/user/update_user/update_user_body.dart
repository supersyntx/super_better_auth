import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_body.freezed.dart';
part 'update_user_body.g.dart';

@freezed
abstract class UpdateUserBody with _$UpdateUserBody {
  const factory UpdateUserBody({
    String? name,
    String? image,
}) = _UpdateUserBody;
  factory UpdateUserBody.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserBodyFromJson(json);
}
