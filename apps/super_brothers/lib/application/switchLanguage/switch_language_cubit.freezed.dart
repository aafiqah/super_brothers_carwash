// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'switch_language_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SwitchLanguageState {

@LocaleConverter() Locale get locale;
/// Create a copy of SwitchLanguageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SwitchLanguageStateCopyWith<SwitchLanguageState> get copyWith => _$SwitchLanguageStateCopyWithImpl<SwitchLanguageState>(this as SwitchLanguageState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SwitchLanguageState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SwitchLanguageState&&(identical(other.locale, _this.locale) || other.locale == _this.locale));
}


@override
int get hashCode {
  final _this = this as SwitchLanguageState;
  return Object.hash(runtimeType,_this.locale);
}

@override
String toString() {
  final _this = this as SwitchLanguageState;
  return 'SwitchLanguageState(locale: ${_this.locale})';
}


}

/// @nodoc
abstract mixin class $SwitchLanguageStateCopyWith<$Res>  {
  factory $SwitchLanguageStateCopyWith(SwitchLanguageState value, $Res Function(SwitchLanguageState) _then) = _$SwitchLanguageStateCopyWithImpl;
@useResult
$Res call({
@LocaleConverter() Locale locale
});




}
/// @nodoc
class _$SwitchLanguageStateCopyWithImpl<$Res>
    implements $SwitchLanguageStateCopyWith<$Res> {
  _$SwitchLanguageStateCopyWithImpl(this._self, this._then);

  final SwitchLanguageState _self;
  final $Res Function(SwitchLanguageState) _then;

/// Create a copy of SwitchLanguageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? locale = null,}) {
  return _then(SwitchLanguageState(
locale: null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as Locale,
  ));
}

}


/// Adds pattern-matching-related methods to [SwitchLanguageState].
extension SwitchLanguageStatePatterns on SwitchLanguageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SwitchLanguageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SwitchLanguageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SwitchLanguageState value)  $default,){
final _that = this;
switch (_that) {
case _SwitchLanguageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SwitchLanguageState value)?  $default,){
final _that = this;
switch (_that) {
case _SwitchLanguageState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@LocaleConverter()  Locale locale)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SwitchLanguageState() when $default != null:
return $default(_that.locale);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@LocaleConverter()  Locale locale)  $default,) {final _that = this;
switch (_that) {
case _SwitchLanguageState():
return $default(_that.locale);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@LocaleConverter()  Locale locale)?  $default,) {final _that = this;
switch (_that) {
case _SwitchLanguageState() when $default != null:
return $default(_that.locale);case _:
  return null;

}
}

}

/// @nodoc


class _SwitchLanguageState implements SwitchLanguageState {
  const _SwitchLanguageState({@LocaleConverter() required this.locale});
  

@override@LocaleConverter() final  Locale locale;

/// Create a copy of SwitchLanguageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SwitchLanguageStateCopyWith<_SwitchLanguageState> get copyWith => __$SwitchLanguageStateCopyWithImpl<_SwitchLanguageState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SwitchLanguageState&&(identical(other.locale, locale) || other.locale == locale));
}


@override
int get hashCode {
    return Object.hash(runtimeType,locale);
}

@override
String toString() {
    return 'SwitchLanguageState(locale: $locale)';
}


}

/// @nodoc
abstract mixin class _$SwitchLanguageStateCopyWith<$Res> implements $SwitchLanguageStateCopyWith<$Res> {
  factory _$SwitchLanguageStateCopyWith(_SwitchLanguageState value, $Res Function(_SwitchLanguageState) _then) = __$SwitchLanguageStateCopyWithImpl;
@override @useResult
$Res call({
@LocaleConverter() Locale locale
});




}
/// @nodoc
class __$SwitchLanguageStateCopyWithImpl<$Res>
    implements _$SwitchLanguageStateCopyWith<$Res> {
  __$SwitchLanguageStateCopyWithImpl(this._self, this._then);

  final _SwitchLanguageState _self;
  final $Res Function(_SwitchLanguageState) _then;

/// Create a copy of SwitchLanguageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? locale = null,}) {
  return _then(_SwitchLanguageState(
locale: null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as Locale,
  ));
}


}

// dart format on
