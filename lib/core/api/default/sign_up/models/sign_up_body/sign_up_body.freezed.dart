// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignUpBody {

 String get name; String get email; String get password; String? get callbackURL;
/// Create a copy of SignUpBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpBodyCopyWith<SignUpBody> get copyWith => _$SignUpBodyCopyWithImpl<SignUpBody>(this as SignUpBody, _$identity);

  /// Serializes this SignUpBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpBody&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.callbackURL, callbackURL) || other.callbackURL == callbackURL));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,email,password,callbackURL);

@override
String toString() {
  return 'SignUpBody(name: $name, email: $email, password: $password, callbackURL: $callbackURL)';
}


}

/// @nodoc
abstract mixin class $SignUpBodyCopyWith<$Res>  {
  factory $SignUpBodyCopyWith(SignUpBody value, $Res Function(SignUpBody) _then) = _$SignUpBodyCopyWithImpl;
@useResult
$Res call({
 String name, String email, String password, String? callbackURL
});




}
/// @nodoc
class _$SignUpBodyCopyWithImpl<$Res>
    implements $SignUpBodyCopyWith<$Res> {
  _$SignUpBodyCopyWithImpl(this._self, this._then);

  final SignUpBody _self;
  final $Res Function(SignUpBody) _then;

/// Create a copy of SignUpBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? email = null,Object? password = null,Object? callbackURL = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,callbackURL: freezed == callbackURL ? _self.callbackURL : callbackURL // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SignUpBody implements SignUpBody {
  const _SignUpBody({required this.name, required this.email, required this.password, this.callbackURL});
  factory _SignUpBody.fromJson(Map<String, dynamic> json) => _$SignUpBodyFromJson(json);

@override final  String name;
@override final  String email;
@override final  String password;
@override final  String? callbackURL;

/// Create a copy of SignUpBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpBodyCopyWith<_SignUpBody> get copyWith => __$SignUpBodyCopyWithImpl<_SignUpBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignUpBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpBody&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.callbackURL, callbackURL) || other.callbackURL == callbackURL));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,email,password,callbackURL);

@override
String toString() {
  return 'SignUpBody(name: $name, email: $email, password: $password, callbackURL: $callbackURL)';
}


}

/// @nodoc
abstract mixin class _$SignUpBodyCopyWith<$Res> implements $SignUpBodyCopyWith<$Res> {
  factory _$SignUpBodyCopyWith(_SignUpBody value, $Res Function(_SignUpBody) _then) = __$SignUpBodyCopyWithImpl;
@override @useResult
$Res call({
 String name, String email, String password, String? callbackURL
});




}
/// @nodoc
class __$SignUpBodyCopyWithImpl<$Res>
    implements _$SignUpBodyCopyWith<$Res> {
  __$SignUpBodyCopyWithImpl(this._self, this._then);

  final _SignUpBody _self;
  final $Res Function(_SignUpBody) _then;

/// Create a copy of SignUpBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? email = null,Object? password = null,Object? callbackURL = freezed,}) {
  return _then(_SignUpBody(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,callbackURL: freezed == callbackURL ? _self.callbackURL : callbackURL // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
