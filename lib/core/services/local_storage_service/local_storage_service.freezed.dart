// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_storage_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppCache implements DiagnosticableTreeMixin {
  @JsonKey(name: DBKeys.categories)
  List<TransactionCategory> get categories;
  @JsonKey(name: DBKeys.timePeriods)
  List<TimePeriod> get timePeriods;
  @JsonKey(name: DBKeys.transactions)
  List<Transaction> get transactions;

  /// Create a copy of AppCache
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppCacheCopyWith<AppCache> get copyWith =>
      _$AppCacheCopyWithImpl<AppCache>(this as AppCache, _$identity);

  /// Serializes this AppCache to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'AppCache'))
      ..add(DiagnosticsProperty('categories', categories))
      ..add(DiagnosticsProperty('timePeriods', timePeriods))
      ..add(DiagnosticsProperty('transactions', transactions));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppCache &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            const DeepCollectionEquality()
                .equals(other.timePeriods, timePeriods) &&
            const DeepCollectionEquality()
                .equals(other.transactions, transactions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(categories),
      const DeepCollectionEquality().hash(timePeriods),
      const DeepCollectionEquality().hash(transactions));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppCache(categories: $categories, timePeriods: $timePeriods, transactions: $transactions)';
  }
}

/// @nodoc
abstract mixin class $AppCacheCopyWith<$Res> {
  factory $AppCacheCopyWith(AppCache value, $Res Function(AppCache) _then) =
      _$AppCacheCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: DBKeys.categories) List<TransactionCategory> categories,
      @JsonKey(name: DBKeys.timePeriods) List<TimePeriod> timePeriods,
      @JsonKey(name: DBKeys.transactions) List<Transaction> transactions});
}

/// @nodoc
class _$AppCacheCopyWithImpl<$Res> implements $AppCacheCopyWith<$Res> {
  _$AppCacheCopyWithImpl(this._self, this._then);

  final AppCache _self;
  final $Res Function(AppCache) _then;

  /// Create a copy of AppCache
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? timePeriods = null,
    Object? transactions = null,
  }) {
    return _then(_self.copyWith(
      categories: null == categories
          ? _self.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<TransactionCategory>,
      timePeriods: null == timePeriods
          ? _self.timePeriods
          : timePeriods // ignore: cast_nullable_to_non_nullable
              as List<TimePeriod>,
      transactions: null == transactions
          ? _self.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AppCache with DiagnosticableTreeMixin implements AppCache {
  const _AppCache(
      {@JsonKey(name: DBKeys.categories)
      final List<TransactionCategory> categories = const [],
      @JsonKey(name: DBKeys.timePeriods)
      final List<TimePeriod> timePeriods = const [],
      @JsonKey(name: DBKeys.transactions)
      final List<Transaction> transactions = const []})
      : _categories = categories,
        _timePeriods = timePeriods,
        _transactions = transactions;
  factory _AppCache.fromJson(Map<String, dynamic> json) =>
      _$AppCacheFromJson(json);

  final List<TransactionCategory> _categories;
  @override
  @JsonKey(name: DBKeys.categories)
  List<TransactionCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<TimePeriod> _timePeriods;
  @override
  @JsonKey(name: DBKeys.timePeriods)
  List<TimePeriod> get timePeriods {
    if (_timePeriods is EqualUnmodifiableListView) return _timePeriods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timePeriods);
  }

  final List<Transaction> _transactions;
  @override
  @JsonKey(name: DBKeys.transactions)
  List<Transaction> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  /// Create a copy of AppCache
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppCacheCopyWith<_AppCache> get copyWith =>
      __$AppCacheCopyWithImpl<_AppCache>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AppCacheToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'AppCache'))
      ..add(DiagnosticsProperty('categories', categories))
      ..add(DiagnosticsProperty('timePeriods', timePeriods))
      ..add(DiagnosticsProperty('transactions', transactions));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppCache &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._timePeriods, _timePeriods) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_timePeriods),
      const DeepCollectionEquality().hash(_transactions));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppCache(categories: $categories, timePeriods: $timePeriods, transactions: $transactions)';
  }
}

/// @nodoc
abstract mixin class _$AppCacheCopyWith<$Res>
    implements $AppCacheCopyWith<$Res> {
  factory _$AppCacheCopyWith(_AppCache value, $Res Function(_AppCache) _then) =
      __$AppCacheCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: DBKeys.categories) List<TransactionCategory> categories,
      @JsonKey(name: DBKeys.timePeriods) List<TimePeriod> timePeriods,
      @JsonKey(name: DBKeys.transactions) List<Transaction> transactions});
}

/// @nodoc
class __$AppCacheCopyWithImpl<$Res> implements _$AppCacheCopyWith<$Res> {
  __$AppCacheCopyWithImpl(this._self, this._then);

  final _AppCache _self;
  final $Res Function(_AppCache) _then;

  /// Create a copy of AppCache
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? categories = null,
    Object? timePeriods = null,
    Object? transactions = null,
  }) {
    return _then(_AppCache(
      categories: null == categories
          ? _self._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<TransactionCategory>,
      timePeriods: null == timePeriods
          ? _self._timePeriods
          : timePeriods // ignore: cast_nullable_to_non_nullable
              as List<TimePeriod>,
      transactions: null == transactions
          ? _self._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<Transaction>,
    ));
  }
}

// dart format on
