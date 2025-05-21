// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_user_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateUserBody {

 String get name; String get email; String get password; String? get role; String? get data;
/// Create a copy of CreateUserBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateUserBodyCopyWith<CreateUserBody> get copyWith => _$CreateUserBodyCopyWithImpl<CreateUserBody>(this as CreateUserBody, _$identity);

  /// Serializes this CreateUserBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateUserBody&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.role, role) || other.role == role)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,email,password,role,data);

@override
String toString() {
  return 'CreateUserBody(name: $name, email: $email, password: $password, role: $role, data: $data)';
}


}

/// @nodoc
abstract mixin class $CreateUserBodyCopyWith<$Res>  {
  factory $CreateUserBodyCopyWith(CreateUserBody value, $Res Function(CreateUserBody) _then) = _$CreateUserBodyCopyWithImpl;
@useResult
$Res call({
 String name, String email, String password, String? role, String? data
});




}
/// @nodoc
class _$CreateUserBodyCopyWithImpl<$Res>
    implements $CreateUserBodyCopyWith<$Res> {
  _$CreateUserBodyCopyWithImpl(this._self, this._then);

  final CreateUserBody _self;
  final $Res Function(CreateUserBody) _then;

/// Create a copy of CreateUserBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? email = null,Object? password = null,Object? role = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CreateUserBody implements CreateUserBody {
  const _CreateUserBody({required this.name, required this.email, required this.password, this.role, this.data});
  factory _CreateUserBody.fromJson(Map<String, dynamic> json) => _$CreateUserBodyFromJson(json);

@override final  String name;
@override final  String email;
@override final  String password;
@override final  String? role;
@override final  String? data;

/// Create a copy of CreateUserBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateUserBodyCopyWith<_CreateUserBody> get copyWith => __$CreateUserBodyCopyWithImpl<_CreateUserBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateUserBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateUserBody&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.role, role) || other.role == role)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,email,password,role,data);

@override
String toString() {
  return 'CreateUserBody(name: $name, email: $email, password: $password, role: $role, data: $data)';
}


}

/// @nodoc
abstract mixin class _$CreateUserBodyCopyWith<$Res> implements $CreateUserBodyCopyWith<$Res> {
  factory _$CreateUserBodyCopyWith(_CreateUserBody value, $Res Function(_CreateUserBody) _then) = __$CreateUserBodyCopyWithImpl;
@override @useResult
$Res call({
 String name, String email, String password, String? role, String? data
});




}
/// @nodoc
class __$CreateUserBodyCopyWithImpl<$Res>
    implements _$CreateUserBodyCopyWith<$Res> {
  __$CreateUserBodyCopyWithImpl(this._self, this._then);

  final _CreateUserBody _self;
  final $Res Function(_CreateUserBody) _then;

/// Create a copy of CreateUserBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? email = null,Object? password = null,Object? role = freezed,Object? data = freezed,}) {
  return _then(_CreateUserBody(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
