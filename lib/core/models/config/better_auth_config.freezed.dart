// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'better_auth_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BetterAuthConfig {

 String get scheme; String get baseUrl; String get storagePrefix;
/// Create a copy of BetterAuthConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BetterAuthConfigCopyWith<BetterAuthConfig> get copyWith => _$BetterAuthConfigCopyWithImpl<BetterAuthConfig>(this as BetterAuthConfig, _$identity);

  /// Serializes this BetterAuthConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BetterAuthConfig&&(identical(other.scheme, scheme) || other.scheme == scheme)&&(identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl)&&(identical(other.storagePrefix, storagePrefix) || other.storagePrefix == storagePrefix));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,scheme,baseUrl,storagePrefix);

@override
String toString() {
  return 'BetterAuthConfig(scheme: $scheme, baseUrl: $baseUrl, storagePrefix: $storagePrefix)';
}


}

/// @nodoc
abstract mixin class $BetterAuthConfigCopyWith<$Res>  {
  factory $BetterAuthConfigCopyWith(BetterAuthConfig value, $Res Function(BetterAuthConfig) _then) = _$BetterAuthConfigCopyWithImpl;
@useResult
$Res call({
 String scheme, String baseUrl, String storagePrefix
});




}
/// @nodoc
class _$BetterAuthConfigCopyWithImpl<$Res>
    implements $BetterAuthConfigCopyWith<$Res> {
  _$BetterAuthConfigCopyWithImpl(this._self, this._then);

  final BetterAuthConfig _self;
  final $Res Function(BetterAuthConfig) _then;

/// Create a copy of BetterAuthConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? scheme = null,Object? baseUrl = null,Object? storagePrefix = null,}) {
  return _then(_self.copyWith(
scheme: null == scheme ? _self.scheme : scheme // ignore: cast_nullable_to_non_nullable
as String,baseUrl: null == baseUrl ? _self.baseUrl : baseUrl // ignore: cast_nullable_to_non_nullable
as String,storagePrefix: null == storagePrefix ? _self.storagePrefix : storagePrefix // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _BetterAuthConfig implements BetterAuthConfig {
  const _BetterAuthConfig({required this.scheme, required this.baseUrl, this.storagePrefix = "better_auth"});
  factory _BetterAuthConfig.fromJson(Map<String, dynamic> json) => _$BetterAuthConfigFromJson(json);

@override final  String scheme;
@override final  String baseUrl;
@override@JsonKey() final  String storagePrefix;

/// Create a copy of BetterAuthConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BetterAuthConfigCopyWith<_BetterAuthConfig> get copyWith => __$BetterAuthConfigCopyWithImpl<_BetterAuthConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BetterAuthConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BetterAuthConfig&&(identical(other.scheme, scheme) || other.scheme == scheme)&&(identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl)&&(identical(other.storagePrefix, storagePrefix) || other.storagePrefix == storagePrefix));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,scheme,baseUrl,storagePrefix);

@override
String toString() {
  return 'BetterAuthConfig(scheme: $scheme, baseUrl: $baseUrl, storagePrefix: $storagePrefix)';
}


}

/// @nodoc
abstract mixin class _$BetterAuthConfigCopyWith<$Res> implements $BetterAuthConfigCopyWith<$Res> {
  factory _$BetterAuthConfigCopyWith(_BetterAuthConfig value, $Res Function(_BetterAuthConfig) _then) = __$BetterAuthConfigCopyWithImpl;
@override @useResult
$Res call({
 String scheme, String baseUrl, String storagePrefix
});




}
/// @nodoc
class __$BetterAuthConfigCopyWithImpl<$Res>
    implements _$BetterAuthConfigCopyWith<$Res> {
  __$BetterAuthConfigCopyWithImpl(this._self, this._then);

  final _BetterAuthConfig _self;
  final $Res Function(_BetterAuthConfig) _then;

/// Create a copy of BetterAuthConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? scheme = null,Object? baseUrl = null,Object? storagePrefix = null,}) {
  return _then(_BetterAuthConfig(
scheme: null == scheme ? _self.scheme : scheme // ignore: cast_nullable_to_non_nullable
as String,baseUrl: null == baseUrl ? _self.baseUrl : baseUrl // ignore: cast_nullable_to_non_nullable
as String,storagePrefix: null == storagePrefix ? _self.storagePrefix : storagePrefix // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
