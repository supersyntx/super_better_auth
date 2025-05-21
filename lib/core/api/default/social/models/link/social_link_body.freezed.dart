// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_link_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocialLinkBody {

 String? get callbackURL; String? get scopes; String get provider;
/// Create a copy of SocialLinkBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocialLinkBodyCopyWith<SocialLinkBody> get copyWith => _$SocialLinkBodyCopyWithImpl<SocialLinkBody>(this as SocialLinkBody, _$identity);

  /// Serializes this SocialLinkBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocialLinkBody&&(identical(other.callbackURL, callbackURL) || other.callbackURL == callbackURL)&&(identical(other.scopes, scopes) || other.scopes == scopes)&&(identical(other.provider, provider) || other.provider == provider));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,callbackURL,scopes,provider);

@override
String toString() {
  return 'SocialLinkBody(callbackURL: $callbackURL, scopes: $scopes, provider: $provider)';
}


}

/// @nodoc
abstract mixin class $SocialLinkBodyCopyWith<$Res>  {
  factory $SocialLinkBodyCopyWith(SocialLinkBody value, $Res Function(SocialLinkBody) _then) = _$SocialLinkBodyCopyWithImpl;
@useResult
$Res call({
 String? callbackURL, String? scopes, String provider
});




}
/// @nodoc
class _$SocialLinkBodyCopyWithImpl<$Res>
    implements $SocialLinkBodyCopyWith<$Res> {
  _$SocialLinkBodyCopyWithImpl(this._self, this._then);

  final SocialLinkBody _self;
  final $Res Function(SocialLinkBody) _then;

/// Create a copy of SocialLinkBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? callbackURL = freezed,Object? scopes = freezed,Object? provider = null,}) {
  return _then(_self.copyWith(
callbackURL: freezed == callbackURL ? _self.callbackURL : callbackURL // ignore: cast_nullable_to_non_nullable
as String?,scopes: freezed == scopes ? _self.scopes : scopes // ignore: cast_nullable_to_non_nullable
as String?,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SocialLinkBody implements SocialLinkBody {
  const _SocialLinkBody({this.callbackURL, this.scopes, required this.provider});
  factory _SocialLinkBody.fromJson(Map<String, dynamic> json) => _$SocialLinkBodyFromJson(json);

@override final  String? callbackURL;
@override final  String? scopes;
@override final  String provider;

/// Create a copy of SocialLinkBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocialLinkBodyCopyWith<_SocialLinkBody> get copyWith => __$SocialLinkBodyCopyWithImpl<_SocialLinkBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SocialLinkBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocialLinkBody&&(identical(other.callbackURL, callbackURL) || other.callbackURL == callbackURL)&&(identical(other.scopes, scopes) || other.scopes == scopes)&&(identical(other.provider, provider) || other.provider == provider));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,callbackURL,scopes,provider);

@override
String toString() {
  return 'SocialLinkBody(callbackURL: $callbackURL, scopes: $scopes, provider: $provider)';
}


}

/// @nodoc
abstract mixin class _$SocialLinkBodyCopyWith<$Res> implements $SocialLinkBodyCopyWith<$Res> {
  factory _$SocialLinkBodyCopyWith(_SocialLinkBody value, $Res Function(_SocialLinkBody) _then) = __$SocialLinkBodyCopyWithImpl;
@override @useResult
$Res call({
 String? callbackURL, String? scopes, String provider
});




}
/// @nodoc
class __$SocialLinkBodyCopyWithImpl<$Res>
    implements _$SocialLinkBodyCopyWith<$Res> {
  __$SocialLinkBodyCopyWithImpl(this._self, this._then);

  final _SocialLinkBody _self;
  final $Res Function(_SocialLinkBody) _then;

/// Create a copy of SocialLinkBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? callbackURL = freezed,Object? scopes = freezed,Object? provider = null,}) {
  return _then(_SocialLinkBody(
callbackURL: freezed == callbackURL ? _self.callbackURL : callbackURL // ignore: cast_nullable_to_non_nullable
as String?,scopes: freezed == scopes ? _self.scopes : scopes // ignore: cast_nullable_to_non_nullable
as String?,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
