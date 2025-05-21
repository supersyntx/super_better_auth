import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_permission_body.freezed.dart';
part 'check_permission_body.g.dart';

@freezed
abstract class CheckPermissionBody with _$CheckPermissionBody {
  const factory CheckPermissionBody({
    required Map<String,dynamic> permissions
}) = _CheckPermissionBody;

  factory CheckPermissionBody.fromJson(Map<String, dynamic> json) =>
      _$CheckPermissionBodyFromJson(json);
}
