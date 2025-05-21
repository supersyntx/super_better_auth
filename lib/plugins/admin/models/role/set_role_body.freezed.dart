// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_role_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SetRoleBody {

 String get userId; String get role;
/// Create a copy of SetRoleBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetRoleBodyCopyWith<SetRoleBody> get copyWith => _$SetRoleBodyCopyWithImpl<SetRoleBody>(this as SetRoleBody, _$identity);

  /// Serializes this SetRoleBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetRoleBody&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,role);

@override
String toString() {
  return 'SetRoleBody(userId: $userId, role: $role)';
}


}

/// @nodoc
abstract mixin class $SetRoleBodyCopyWith<$Res>  {
  factory $SetRoleBodyCopyWith(SetRoleBody value, $Res Function(SetRoleBody) _then) = _$SetRoleBodyCopyWithImpl;
@useResult
$Res call({
 String userId, String role
});




}
/// @nodoc
class _$SetRoleBodyCopyWithImpl<$Res>
    implements $SetRoleBodyCopyWith<$Res> {
  _$SetRoleBodyCopyWithImpl(this._self, this._then);

  final SetRoleBody _self;
  final $Res Function(SetRoleBody) _then;

/// Create a copy of SetRoleBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? role = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SetRoleBody implements SetRoleBody {
  const _SetRoleBody({required this.userId, required this.role});
  factory _SetRoleBody.fromJson(Map<String, dynamic> json) => _$SetRoleBodyFromJson(json);

@override final  String userId;
@override final  String role;

/// Create a copy of SetRoleBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetRoleBodyCopyWith<_SetRoleBody> get copyWith => __$SetRoleBodyCopyWithImpl<_SetRoleBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SetRoleBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetRoleBody&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,role);

@override
String toString() {
  return 'SetRoleBody(userId: $userId, role: $role)';
}


}

/// @nodoc
abstract mixin class _$SetRoleBodyCopyWith<$Res> implements $SetRoleBodyCopyWith<$Res> {
  factory _$SetRoleBodyCopyWith(_SetRoleBody value, $Res Function(_SetRoleBody) _then) = __$SetRoleBodyCopyWithImpl;
@override @useResult
$Res call({
 String userId, String role
});




}
/// @nodoc
class __$SetRoleBodyCopyWithImpl<$Res>
    implements _$SetRoleBodyCopyWith<$Res> {
  __$SetRoleBodyCopyWithImpl(this._self, this._then);

  final _SetRoleBody _self;
  final $Res Function(_SetRoleBody) _then;

/// Create a copy of SetRoleBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? role = null,}) {
  return _then(_SetRoleBody(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
