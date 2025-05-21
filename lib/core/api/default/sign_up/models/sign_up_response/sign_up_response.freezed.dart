// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignUpResponse {

 String? get token; User get user; bool get status;
/// Create a copy of SignUpResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpResponseCopyWith<SignUpResponse> get copyWith => _$SignUpResponseCopyWithImpl<SignUpResponse>(this as SignUpResponse, _$identity);

  /// Serializes this SignUpResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpResponse&&(identical(other.token, token) || other.token == token)&&(identical(other.user, user) || other.user == user)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,user,status);

@override
String toString() {
  return 'SignUpResponse(token: $token, user: $user, status: $status)';
}


}

/// @nodoc
abstract mixin class $SignUpResponseCopyWith<$Res>  {
  factory $SignUpResponseCopyWith(SignUpResponse value, $Res Function(SignUpResponse) _then) = _$SignUpResponseCopyWithImpl;
@useResult
$Res call({
 String? token, User user, bool status
});


$UserCopyWith<$Res> get user;

}
/// @nodoc
class _$SignUpResponseCopyWithImpl<$Res>
    implements $SignUpResponseCopyWith<$Res> {
  _$SignUpResponseCopyWithImpl(this._self, this._then);

  final SignUpResponse _self;
  final $Res Function(SignUpResponse) _then;

/// Create a copy of SignUpResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = freezed,Object? user = null,Object? status = null,}) {
  return _then(_self.copyWith(
token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of SignUpResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _SignUpResponse implements SignUpResponse {
  const _SignUpResponse({this.token, required this.user, this.status = true});
  factory _SignUpResponse.fromJson(Map<String, dynamic> json) => _$SignUpResponseFromJson(json);

@override final  String? token;
@override final  User user;
@override@JsonKey() final  bool status;

/// Create a copy of SignUpResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpResponseCopyWith<_SignUpResponse> get copyWith => __$SignUpResponseCopyWithImpl<_SignUpResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignUpResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpResponse&&(identical(other.token, token) || other.token == token)&&(identical(other.user, user) || other.user == user)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,user,status);

@override
String toString() {
  return 'SignUpResponse(token: $token, user: $user, status: $status)';
}


}

/// @nodoc
abstract mixin class _$SignUpResponseCopyWith<$Res> implements $SignUpResponseCopyWith<$Res> {
  factory _$SignUpResponseCopyWith(_SignUpResponse value, $Res Function(_SignUpResponse) _then) = __$SignUpResponseCopyWithImpl;
@override @useResult
$Res call({
 String? token, User user, bool status
});


@override $UserCopyWith<$Res> get user;

}
/// @nodoc
class __$SignUpResponseCopyWithImpl<$Res>
    implements _$SignUpResponseCopyWith<$Res> {
  __$SignUpResponseCopyWithImpl(this._self, this._then);

  final _SignUpResponse _self;
  final $Res Function(_SignUpResponse) _then;

/// Create a copy of SignUpResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = freezed,Object? user = null,Object? status = null,}) {
  return _then(_SignUpResponse(
token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of SignUpResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
