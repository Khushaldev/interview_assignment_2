// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_language.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppLanguage {
  String get code;
  String get name;
  String? get countryCode;

  /// Create a copy of AppLanguage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppLanguageCopyWith<AppLanguage> get copyWith =>
      _$AppLanguageCopyWithImpl<AppLanguage>(this as AppLanguage, _$identity);

  /// Serializes this AppLanguage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppLanguage &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, name, countryCode);

  @override
  String toString() {
    return 'AppLanguage(code: $code, name: $name, countryCode: $countryCode)';
  }
}

/// @nodoc
abstract mixin class $AppLanguageCopyWith<$Res> {
  factory $AppLanguageCopyWith(
          AppLanguage value, $Res Function(AppLanguage) _then) =
      _$AppLanguageCopyWithImpl;
  @useResult
  $Res call({String code, String name, String? countryCode});
}

/// @nodoc
class _$AppLanguageCopyWithImpl<$Res> implements $AppLanguageCopyWith<$Res> {
  _$AppLanguageCopyWithImpl(this._self, this._then);

  final AppLanguage _self;
  final $Res Function(AppLanguage) _then;

  /// Create a copy of AppLanguage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? countryCode = freezed,
  }) {
    return _then(_self.copyWith(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: freezed == countryCode
          ? _self.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AppLanguage implements AppLanguage {
  const _AppLanguage(
      {required this.code, required this.name, this.countryCode});
  factory _AppLanguage.fromJson(Map<String, dynamic> json) =>
      _$AppLanguageFromJson(json);

  @override
  final String code;
  @override
  final String name;
  @override
  final String? countryCode;

  /// Create a copy of AppLanguage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppLanguageCopyWith<_AppLanguage> get copyWith =>
      __$AppLanguageCopyWithImpl<_AppLanguage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AppLanguageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppLanguage &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, name, countryCode);

  @override
  String toString() {
    return 'AppLanguage(code: $code, name: $name, countryCode: $countryCode)';
  }
}

/// @nodoc
abstract mixin class _$AppLanguageCopyWith<$Res>
    implements $AppLanguageCopyWith<$Res> {
  factory _$AppLanguageCopyWith(
          _AppLanguage value, $Res Function(_AppLanguage) _then) =
      __$AppLanguageCopyWithImpl;
  @override
  @useResult
  $Res call({String code, String name, String? countryCode});
}

/// @nodoc
class __$AppLanguageCopyWithImpl<$Res> implements _$AppLanguageCopyWith<$Res> {
  __$AppLanguageCopyWithImpl(this._self, this._then);

  final _AppLanguage _self;
  final $Res Function(_AppLanguage) _then;

  /// Create a copy of AppLanguage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? countryCode = freezed,
  }) {
    return _then(_AppLanguage(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: freezed == countryCode
          ? _self.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
