// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_user_password_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SetUserPasswordBody {

 String get newPassword; String get userId;
/// Create a copy of SetUserPasswordBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetUserPasswordBodyCopyWith<SetUserPasswordBody> get copyWith => _$SetUserPasswordBodyCopyWithImpl<SetUserPasswordBody>(this as SetUserPasswordBody, _$identity);

  /// Serializes this SetUserPasswordBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetUserPasswordBody&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,newPassword,userId);

@override
String toString() {
  return 'SetUserPasswordBody(newPassword: $newPassword, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $SetUserPasswordBodyCopyWith<$Res>  {
  factory $SetUserPasswordBodyCopyWith(SetUserPasswordBody value, $Res Function(SetUserPasswordBody) _then) = _$SetUserPasswordBodyCopyWithImpl;
@useResult
$Res call({
 String newPassword, String userId
});




}
/// @nodoc
class _$SetUserPasswordBodyCopyWithImpl<$Res>
    implements $SetUserPasswordBodyCopyWith<$Res> {
  _$SetUserPasswordBodyCopyWithImpl(this._self, this._then);

  final SetUserPasswordBody _self;
  final $Res Function(SetUserPasswordBody) _then;

/// Create a copy of SetUserPasswordBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? newPassword = null,Object? userId = null,}) {
  return _then(_self.copyWith(
newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SetUserPasswordBody implements SetUserPasswordBody {
  const _SetUserPasswordBody({required this.newPassword, required this.userId});
  factory _SetUserPasswordBody.fromJson(Map<String, dynamic> json) => _$SetUserPasswordBodyFromJson(json);

@override final  String newPassword;
@override final  String userId;

/// Create a copy of SetUserPasswordBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetUserPasswordBodyCopyWith<_SetUserPasswordBody> get copyWith => __$SetUserPasswordBodyCopyWithImpl<_SetUserPasswordBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SetUserPasswordBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetUserPasswordBody&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,newPassword,userId);

@override
String toString() {
  return 'SetUserPasswordBody(newPassword: $newPassword, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$SetUserPasswordBodyCopyWith<$Res> implements $SetUserPasswordBodyCopyWith<$Res> {
  factory _$SetUserPasswordBodyCopyWith(_SetUserPasswordBody value, $Res Function(_SetUserPasswordBody) _then) = __$SetUserPasswordBodyCopyWithImpl;
@override @useResult
$Res call({
 String newPassword, String userId
});




}
/// @nodoc
class __$SetUserPasswordBodyCopyWithImpl<$Res>
    implements _$SetUserPasswordBodyCopyWith<$Res> {
  __$SetUserPasswordBodyCopyWithImpl(this._self, this._then);

  final _SetUserPasswordBody _self;
  final $Res Function(_SetUserPasswordBody) _then;

/// Create a copy of SetUserPasswordBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? newPassword = null,Object? userId = null,}) {
  return _then(_SetUserPasswordBody(
newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
