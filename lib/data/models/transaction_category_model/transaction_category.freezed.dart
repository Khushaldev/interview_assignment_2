// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionCategory {
  String get categoryId;
  String get name;
  String get icon;

  /// Create a copy of TransactionCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransactionCategoryCopyWith<TransactionCategory> get copyWith =>
      _$TransactionCategoryCopyWithImpl<TransactionCategory>(
          this as TransactionCategory, _$identity);

  /// Serializes this TransactionCategory to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TransactionCategory &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, categoryId, name, icon);

  @override
  String toString() {
    return 'TransactionCategory(categoryId: $categoryId, name: $name, icon: $icon)';
  }
}

/// @nodoc
abstract mixin class $TransactionCategoryCopyWith<$Res> {
  factory $TransactionCategoryCopyWith(
          TransactionCategory value, $Res Function(TransactionCategory) _then) =
      _$TransactionCategoryCopyWithImpl;
  @useResult
  $Res call({String categoryId, String name, String icon});
}

/// @nodoc
class _$TransactionCategoryCopyWithImpl<$Res>
    implements $TransactionCategoryCopyWith<$Res> {
  _$TransactionCategoryCopyWithImpl(this._self, this._then);

  final TransactionCategory _self;
  final $Res Function(TransactionCategory) _then;

  /// Create a copy of TransactionCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? name = null,
    Object? icon = null,
  }) {
    return _then(_self.copyWith(
      categoryId: null == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _TransactionCategory implements TransactionCategory {
  const _TransactionCategory(
      {required this.categoryId, required this.name, required this.icon});
  factory _TransactionCategory.fromJson(Map<String, dynamic> json) =>
      _$TransactionCategoryFromJson(json);

  @override
  final String categoryId;
  @override
  final String name;
  @override
  final String icon;

  /// Create a copy of TransactionCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TransactionCategoryCopyWith<_TransactionCategory> get copyWith =>
      __$TransactionCategoryCopyWithImpl<_TransactionCategory>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TransactionCategoryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TransactionCategory &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, categoryId, name, icon);

  @override
  String toString() {
    return 'TransactionCategory(categoryId: $categoryId, name: $name, icon: $icon)';
  }
}

/// @nodoc
abstract mixin class _$TransactionCategoryCopyWith<$Res>
    implements $TransactionCategoryCopyWith<$Res> {
  factory _$TransactionCategoryCopyWith(_TransactionCategory value,
          $Res Function(_TransactionCategory) _then) =
      __$TransactionCategoryCopyWithImpl;
  @override
  @useResult
  $Res call({String categoryId, String name, String icon});
}

/// @nodoc
class __$TransactionCategoryCopyWithImpl<$Res>
    implements _$TransactionCategoryCopyWith<$Res> {
  __$TransactionCategoryCopyWithImpl(this._self, this._then);

  final _TransactionCategory _self;
  final $Res Function(_TransactionCategory) _then;

  /// Create a copy of TransactionCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? categoryId = null,
    Object? name = null,
    Object? icon = null,
  }) {
    return _then(_TransactionCategory(
      categoryId: null == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
