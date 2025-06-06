// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jwt_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JwtKey {

 String get kid; String get kty; String get alg; String? get use; String? get n; String? get e; String? get crv; String? get x; String? get y;
/// Create a copy of JwtKey
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JwtKeyCopyWith<JwtKey> get copyWith => _$JwtKeyCopyWithImpl<JwtKey>(this as JwtKey, _$identity);

  /// Serializes this JwtKey to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JwtKey&&(identical(other.kid, kid) || other.kid == kid)&&(identical(other.kty, kty) || other.kty == kty)&&(identical(other.alg, alg) || other.alg == alg)&&(identical(other.use, use) || other.use == use)&&(identical(other.n, n) || other.n == n)&&(identical(other.e, e) || other.e == e)&&(identical(other.crv, crv) || other.crv == crv)&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kid,kty,alg,use,n,e,crv,x,y);

@override
String toString() {
  return 'JwtKey(kid: $kid, kty: $kty, alg: $alg, use: $use, n: $n, e: $e, crv: $crv, x: $x, y: $y)';
}


}

/// @nodoc
abstract mixin class $JwtKeyCopyWith<$Res>  {
  factory $JwtKeyCopyWith(JwtKey value, $Res Function(JwtKey) _then) = _$JwtKeyCopyWithImpl;
@useResult
$Res call({
 String kid, String kty, String alg, String? use, String? n, String? e, String? crv, String? x, String? y
});




}
/// @nodoc
class _$JwtKeyCopyWithImpl<$Res>
    implements $JwtKeyCopyWith<$Res> {
  _$JwtKeyCopyWithImpl(this._self, this._then);

  final JwtKey _self;
  final $Res Function(JwtKey) _then;

/// Create a copy of JwtKey
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kid = null,Object? kty = null,Object? alg = null,Object? use = freezed,Object? n = freezed,Object? e = freezed,Object? crv = freezed,Object? x = freezed,Object? y = freezed,}) {
  return _then(_self.copyWith(
kid: null == kid ? _self.kid : kid // ignore: cast_nullable_to_non_nullable
as String,kty: null == kty ? _self.kty : kty // ignore: cast_nullable_to_non_nullable
as String,alg: null == alg ? _self.alg : alg // ignore: cast_nullable_to_non_nullable
as String,use: freezed == use ? _self.use : use // ignore: cast_nullable_to_non_nullable
as String?,n: freezed == n ? _self.n : n // ignore: cast_nullable_to_non_nullable
as String?,e: freezed == e ? _self.e : e // ignore: cast_nullable_to_non_nullable
as String?,crv: freezed == crv ? _self.crv : crv // ignore: cast_nullable_to_non_nullable
as String?,x: freezed == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as String?,y: freezed == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _JwtKey implements JwtKey {
  const _JwtKey({required this.kid, required this.kty, required this.alg, this.use, this.n, this.e, this.crv, this.x, this.y});
  factory _JwtKey.fromJson(Map<String, dynamic> json) => _$JwtKeyFromJson(json);

@override final  String kid;
@override final  String kty;
@override final  String alg;
@override final  String? use;
@override final  String? n;
@override final  String? e;
@override final  String? crv;
@override final  String? x;
@override final  String? y;

/// Create a copy of JwtKey
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JwtKeyCopyWith<_JwtKey> get copyWith => __$JwtKeyCopyWithImpl<_JwtKey>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JwtKeyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JwtKey&&(identical(other.kid, kid) || other.kid == kid)&&(identical(other.kty, kty) || other.kty == kty)&&(identical(other.alg, alg) || other.alg == alg)&&(identical(other.use, use) || other.use == use)&&(identical(other.n, n) || other.n == n)&&(identical(other.e, e) || other.e == e)&&(identical(other.crv, crv) || other.crv == crv)&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kid,kty,alg,use,n,e,crv,x,y);

@override
String toString() {
  return 'JwtKey(kid: $kid, kty: $kty, alg: $alg, use: $use, n: $n, e: $e, crv: $crv, x: $x, y: $y)';
}


}

/// @nodoc
abstract mixin class _$JwtKeyCopyWith<$Res> implements $JwtKeyCopyWith<$Res> {
  factory _$JwtKeyCopyWith(_JwtKey value, $Res Function(_JwtKey) _then) = __$JwtKeyCopyWithImpl;
@override @useResult
$Res call({
 String kid, String kty, String alg, String? use, String? n, String? e, String? crv, String? x, String? y
});




}
/// @nodoc
class __$JwtKeyCopyWithImpl<$Res>
    implements _$JwtKeyCopyWith<$Res> {
  __$JwtKeyCopyWithImpl(this._self, this._then);

  final _JwtKey _self;
  final $Res Function(_JwtKey) _then;

/// Create a copy of JwtKey
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kid = null,Object? kty = null,Object? alg = null,Object? use = freezed,Object? n = freezed,Object? e = freezed,Object? crv = freezed,Object? x = freezed,Object? y = freezed,}) {
  return _then(_JwtKey(
kid: null == kid ? _self.kid : kid // ignore: cast_nullable_to_non_nullable
as String,kty: null == kty ? _self.kty : kty // ignore: cast_nullable_to_non_nullable
as String,alg: null == alg ? _self.alg : alg // ignore: cast_nullable_to_non_nullable
as String,use: freezed == use ? _self.use : use // ignore: cast_nullable_to_non_nullable
as String?,n: freezed == n ? _self.n : n // ignore: cast_nullable_to_non_nullable
as String?,e: freezed == e ? _self.e : e // ignore: cast_nullable_to_non_nullable
as String?,crv: freezed == crv ? _self.crv : crv // ignore: cast_nullable_to_non_nullable
as String?,x: freezed == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as String?,y: freezed == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
