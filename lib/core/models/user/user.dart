import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required String id,
    required String name,
    required String email,
    @Default(false) bool emailVerified,
    String? image,
    @Default(null) DateTime? createdAt,
    @Default(null) DateTime? updatedAt,
}) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
