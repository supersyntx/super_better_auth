// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cookie_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CookieResponse {

 Map<String, String> get cookies; String? get error;
/// Create a copy of CookieResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CookieResponseCopyWith<CookieResponse> get copyWith => _$CookieResponseCopyWithImpl<CookieResponse>(this as CookieResponse, _$identity);

  /// Serializes this CookieResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CookieResponse&&const DeepCollectionEquality().equals(other.cookies, cookies)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(cookies),error);

@override
String toString() {
  return 'CookieResponse(cookies: $cookies, error: $error)';
}


}

/// @nodoc
abstract mixin class $CookieResponseCopyWith<$Res>  {
  factory $CookieResponseCopyWith(CookieResponse value, $Res Function(CookieResponse) _then) = _$CookieResponseCopyWithImpl;
@useResult
$Res call({
 Map<String, String> cookies, String? error
});




}
/// @nodoc
class _$CookieResponseCopyWithImpl<$Res>
    implements $CookieResponseCopyWith<$Res> {
  _$CookieResponseCopyWithImpl(this._self, this._then);

  final CookieResponse _self;
  final $Res Function(CookieResponse) _then;

/// Create a copy of CookieResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cookies = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
cookies: null == cookies ? _self.cookies : cookies // ignore: cast_nullable_to_non_nullable
as Map<String, String>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CookieResponse].
extension CookieResponsePatterns on CookieResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CookieResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CookieResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CookieResponse value)  $default,){
final _that = this;
switch (_that) {
case _CookieResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CookieResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CookieResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, String> cookies,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CookieResponse() when $default != null:
return $default(_that.cookies,_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, String> cookies,  String? error)  $default,) {final _that = this;
switch (_that) {
case _CookieResponse():
return $default(_that.cookies,_that.error);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, String> cookies,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _CookieResponse() when $default != null:
return $default(_that.cookies,_that.error);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CookieResponse implements CookieResponse {
  const _CookieResponse({required final  Map<String, String> cookies, this.error}): _cookies = cookies;
  factory _CookieResponse.fromJson(Map<String, dynamic> json) => _$CookieResponseFromJson(json);

 final  Map<String, String> _cookies;
@override Map<String, String> get cookies {
  if (_cookies is EqualUnmodifiableMapView) return _cookies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_cookies);
}

@override final  String? error;

/// Create a copy of CookieResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CookieResponseCopyWith<_CookieResponse> get copyWith => __$CookieResponseCopyWithImpl<_CookieResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CookieResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CookieResponse&&const DeepCollectionEquality().equals(other._cookies, _cookies)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_cookies),error);

@override
String toString() {
  return 'CookieResponse(cookies: $cookies, error: $error)';
}


}

/// @nodoc
abstract mixin class _$CookieResponseCopyWith<$Res> implements $CookieResponseCopyWith<$Res> {
  factory _$CookieResponseCopyWith(_CookieResponse value, $Res Function(_CookieResponse) _then) = __$CookieResponseCopyWithImpl;
@override @useResult
$Res call({
 Map<String, String> cookies, String? error
});




}
/// @nodoc
class __$CookieResponseCopyWithImpl<$Res>
    implements _$CookieResponseCopyWith<$Res> {
  __$CookieResponseCopyWithImpl(this._self, this._then);

  final _CookieResponse _self;
  final $Res Function(_CookieResponse) _then;

/// Create a copy of CookieResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cookies = null,Object? error = freezed,}) {
  return _then(_CookieResponse(
cookies: null == cookies ? _self._cookies : cookies // ignore: cast_nullable_to_non_nullable
as Map<String, String>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
