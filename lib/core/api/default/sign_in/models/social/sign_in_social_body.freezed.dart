// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_social_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignInSocialBody {

 String? get callbackURL; String? get newUserCallbackURL; String? get errorCallbackURL; String get provider; String? get disableRedirect; String? get idToken; String? get scopes; String? get requestSignUp; String? get loginHint;
/// Create a copy of SignInSocialBody
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInSocialBodyCopyWith<SignInSocialBody> get copyWith => _$SignInSocialBodyCopyWithImpl<SignInSocialBody>(this as SignInSocialBody, _$identity);

  /// Serializes this SignInSocialBody to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInSocialBody&&(identical(other.callbackURL, callbackURL) || other.callbackURL == callbackURL)&&(identical(other.newUserCallbackURL, newUserCallbackURL) || other.newUserCallbackURL == newUserCallbackURL)&&(identical(other.errorCallbackURL, errorCallbackURL) || other.errorCallbackURL == errorCallbackURL)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.disableRedirect, disableRedirect) || other.disableRedirect == disableRedirect)&&(identical(other.idToken, idToken) || other.idToken == idToken)&&(identical(other.scopes, scopes) || other.scopes == scopes)&&(identical(other.requestSignUp, requestSignUp) || other.requestSignUp == requestSignUp)&&(identical(other.loginHint, loginHint) || other.loginHint == loginHint));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,callbackURL,newUserCallbackURL,errorCallbackURL,provider,disableRedirect,idToken,scopes,requestSignUp,loginHint);

@override
String toString() {
  return 'SignInSocialBody(callbackURL: $callbackURL, newUserCallbackURL: $newUserCallbackURL, errorCallbackURL: $errorCallbackURL, provider: $provider, disableRedirect: $disableRedirect, idToken: $idToken, scopes: $scopes, requestSignUp: $requestSignUp, loginHint: $loginHint)';
}


}

/// @nodoc
abstract mixin class $SignInSocialBodyCopyWith<$Res>  {
  factory $SignInSocialBodyCopyWith(SignInSocialBody value, $Res Function(SignInSocialBody) _then) = _$SignInSocialBodyCopyWithImpl;
@useResult
$Res call({
 String? callbackURL, String? newUserCallbackURL, String? errorCallbackURL, String provider, String? disableRedirect, String? idToken, String? scopes, String? requestSignUp, String? loginHint
});




}
/// @nodoc
class _$SignInSocialBodyCopyWithImpl<$Res>
    implements $SignInSocialBodyCopyWith<$Res> {
  _$SignInSocialBodyCopyWithImpl(this._self, this._then);

  final SignInSocialBody _self;
  final $Res Function(SignInSocialBody) _then;

/// Create a copy of SignInSocialBody
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? callbackURL = freezed,Object? newUserCallbackURL = freezed,Object? errorCallbackURL = freezed,Object? provider = null,Object? disableRedirect = freezed,Object? idToken = freezed,Object? scopes = freezed,Object? requestSignUp = freezed,Object? loginHint = freezed,}) {
  return _then(_self.copyWith(
callbackURL: freezed == callbackURL ? _self.callbackURL : callbackURL // ignore: cast_nullable_to_non_nullable
as String?,newUserCallbackURL: freezed == newUserCallbackURL ? _self.newUserCallbackURL : newUserCallbackURL // ignore: cast_nullable_to_non_nullable
as String?,errorCallbackURL: freezed == errorCallbackURL ? _self.errorCallbackURL : errorCallbackURL // ignore: cast_nullable_to_non_nullable
as String?,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,disableRedirect: freezed == disableRedirect ? _self.disableRedirect : disableRedirect // ignore: cast_nullable_to_non_nullable
as String?,idToken: freezed == idToken ? _self.idToken : idToken // ignore: cast_nullable_to_non_nullable
as String?,scopes: freezed == scopes ? _self.scopes : scopes // ignore: cast_nullable_to_non_nullable
as String?,requestSignUp: freezed == requestSignUp ? _self.requestSignUp : requestSignUp // ignore: cast_nullable_to_non_nullable
as String?,loginHint: freezed == loginHint ? _self.loginHint : loginHint // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SignInSocialBody implements SignInSocialBody {
  const _SignInSocialBody({this.callbackURL, this.newUserCallbackURL, this.errorCallbackURL, required this.provider, this.disableRedirect, this.idToken, this.scopes, this.requestSignUp, this.loginHint});
  factory _SignInSocialBody.fromJson(Map<String, dynamic> json) => _$SignInSocialBodyFromJson(json);

@override final  String? callbackURL;
@override final  String? newUserCallbackURL;
@override final  String? errorCallbackURL;
@override final  String provider;
@override final  String? disableRedirect;
@override final  String? idToken;
@override final  String? scopes;
@override final  String? requestSignUp;
@override final  String? loginHint;

/// Create a copy of SignInSocialBody
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignInSocialBodyCopyWith<_SignInSocialBody> get copyWith => __$SignInSocialBodyCopyWithImpl<_SignInSocialBody>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignInSocialBodyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignInSocialBody&&(identical(other.callbackURL, callbackURL) || other.callbackURL == callbackURL)&&(identical(other.newUserCallbackURL, newUserCallbackURL) || other.newUserCallbackURL == newUserCallbackURL)&&(identical(other.errorCallbackURL, errorCallbackURL) || other.errorCallbackURL == errorCallbackURL)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.disableRedirect, disableRedirect) || other.disableRedirect == disableRedirect)&&(identical(other.idToken, idToken) || other.idToken == idToken)&&(identical(other.scopes, scopes) || other.scopes == scopes)&&(identical(other.requestSignUp, requestSignUp) || other.requestSignUp == requestSignUp)&&(identical(other.loginHint, loginHint) || other.loginHint == loginHint));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,callbackURL,newUserCallbackURL,errorCallbackURL,provider,disableRedirect,idToken,scopes,requestSignUp,loginHint);

@override
String toString() {
  return 'SignInSocialBody(callbackURL: $callbackURL, newUserCallbackURL: $newUserCallbackURL, errorCallbackURL: $errorCallbackURL, provider: $provider, disableRedirect: $disableRedirect, idToken: $idToken, scopes: $scopes, requestSignUp: $requestSignUp, loginHint: $loginHint)';
}


}

/// @nodoc
abstract mixin class _$SignInSocialBodyCopyWith<$Res> implements $SignInSocialBodyCopyWith<$Res> {
  factory _$SignInSocialBodyCopyWith(_SignInSocialBody value, $Res Function(_SignInSocialBody) _then) = __$SignInSocialBodyCopyWithImpl;
@override @useResult
$Res call({
 String? callbackURL, String? newUserCallbackURL, String? errorCallbackURL, String provider, String? disableRedirect, String? idToken, String? scopes, String? requestSignUp, String? loginHint
});




}
/// @nodoc
class __$SignInSocialBodyCopyWithImpl<$Res>
    implements _$SignInSocialBodyCopyWith<$Res> {
  __$SignInSocialBodyCopyWithImpl(this._self, this._then);

  final _SignInSocialBody _self;
  final $Res Function(_SignInSocialBody) _then;

/// Create a copy of SignInSocialBody
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? callbackURL = freezed,Object? newUserCallbackURL = freezed,Object? errorCallbackURL = freezed,Object? provider = null,Object? disableRedirect = freezed,Object? idToken = freezed,Object? scopes = freezed,Object? requestSignUp = freezed,Object? loginHint = freezed,}) {
  return _then(_SignInSocialBody(
callbackURL: freezed == callbackURL ? _self.callbackURL : callbackURL // ignore: cast_nullable_to_non_nullable
as String?,newUserCallbackURL: freezed == newUserCallbackURL ? _self.newUserCallbackURL : newUserCallbackURL // ignore: cast_nullable_to_non_nullable
as String?,errorCallbackURL: freezed == errorCallbackURL ? _self.errorCallbackURL : errorCallbackURL // ignore: cast_nullable_to_non_nullable
as String?,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,disableRedirect: freezed == disableRedirect ? _self.disableRedirect : disableRedirect // ignore: cast_nullable_to_non_nullable
as String?,idToken: freezed == idToken ? _self.idToken : idToken // ignore: cast_nullable_to_non_nullable
as String?,scopes: freezed == scopes ? _self.scopes : scopes // ignore: cast_nullable_to_non_nullable
as String?,requestSignUp: freezed == requestSignUp ? _self.requestSignUp : requestSignUp // ignore: cast_nullable_to_non_nullable
as String?,loginHint: freezed == loginHint ? _self.loginHint : loginHint // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
