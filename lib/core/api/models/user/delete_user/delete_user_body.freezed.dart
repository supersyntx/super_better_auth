// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_user_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteUserBody {

 String? get callbackURL; String? get password; String? get token;
/// Create a copy of DeleteUserBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteUserBodyCopyWith<DeleteUserBody> get copyWith => _$DeleteUserBodyCopyWithImpl<DeleteUserBody>(this as DeleteUserBody, _$identity);

  /// Serializes this DeleteUserBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteUserBody&&(identical(other.callbackURL, callbackURL) || other.callbackURL == callbackURL)&&(identical(other.password, password) || other.password == password)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,callbackURL,password,token);

@override
String toString() {
  return 'DeleteUserBody(callbackURL: $callbackURL, password: $password, token: $token)';
}


}

/// @nodoc
abstract mixin class $DeleteUserBodyCopyWith<$Res>  {
  factory $DeleteUserBodyCopyWith(DeleteUserBody value, $Res Function(DeleteUserBody) _then) = _$DeleteUserBodyCopyWithImpl;
@useResult
$Res call({
 String? callbackURL, String? password, String? token
});




}
/// @nodoc
class _$DeleteUserBodyCopyWithImpl<$Res>
    implements $DeleteUserBodyCopyWith<$Res> {
  _$DeleteUserBodyCopyWithImpl(this._self, this._then);

  final DeleteUserBody _self;
  final $Res Function(DeleteUserBody) _then;

/// Create a copy of DeleteUserBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? callbackURL = freezed,Object? password = freezed,Object? token = freezed,}) {
  return _then(_self.copyWith(
callbackURL: freezed == callbackURL ? _self.callbackURL : callbackURL // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _DeleteUserBody implements DeleteUserBody {
  const _DeleteUserBody({this.callbackURL, this.password, this.token});
  factory _DeleteUserBody.fromJson(Map<String, dynamic> json) => _$DeleteUserBodyFromJson(json);

@override final  String? callbackURL;
@override final  String? password;
@override final  String? token;

/// Create a copy of DeleteUserBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteUserBodyCopyWith<_DeleteUserBody> get copyWith => __$DeleteUserBodyCopyWithImpl<_DeleteUserBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeleteUserBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteUserBody&&(identical(other.callbackURL, callbackURL) || other.callbackURL == callbackURL)&&(identical(other.password, password) || other.password == password)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,callbackURL,password,token);

@override
String toString() {
  return 'DeleteUserBody(callbackURL: $callbackURL, password: $password, token: $token)';
}


}

/// @nodoc
abstract mixin class _$DeleteUserBodyCopyWith<$Res> implements $DeleteUserBodyCopyWith<$Res> {
  factory _$DeleteUserBodyCopyWith(_DeleteUserBody value, $Res Function(_DeleteUserBody) _then) = __$DeleteUserBodyCopyWithImpl;
@override @useResult
$Res call({
 String? callbackURL, String? password, String? token
});




}
/// @nodoc
class __$DeleteUserBodyCopyWithImpl<$Res>
    implements _$DeleteUserBodyCopyWith<$Res> {
  __$DeleteUserBodyCopyWithImpl(this._self, this._then);

  final _DeleteUserBody _self;
  final $Res Function(_DeleteUserBody) _then;

/// Create a copy of DeleteUserBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? callbackURL = freezed,Object? password = freezed,Object? token = freezed,}) {
  return _then(_DeleteUserBody(
callbackURL: freezed == callbackURL ? _self.callbackURL : callbackURL // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
