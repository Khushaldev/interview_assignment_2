// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Transaction {
  String get transactionId;
  double get amount;
  String get note;
  DateTime get date;
  TransactionType get type;
  String get userId;
  String get categoryId;
  String get periodId;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<Transaction> get copyWith =>
      _$TransactionCopyWithImpl<Transaction>(this as Transaction, _$identity);

  /// Serializes this Transaction to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Transaction &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.periodId, periodId) ||
                other.periodId == periodId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, transactionId, amount, note,
      date, type, userId, categoryId, periodId);

  @override
  String toString() {
    return 'Transaction(transactionId: $transactionId, amount: $amount, note: $note, date: $date, type: $type, userId: $userId, categoryId: $categoryId, periodId: $periodId)';
  }
}

/// @nodoc
abstract mixin class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) _then) =
      _$TransactionCopyWithImpl;
  @useResult
  $Res call(
      {String transactionId,
      double amount,
      String note,
      DateTime date,
      TransactionType type,
      String userId,
      String categoryId,
      String periodId});
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res> implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._self, this._then);

  final Transaction _self;
  final $Res Function(Transaction) _then;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? amount = null,
    Object? note = null,
    Object? date = null,
    Object? type = null,
    Object? userId = null,
    Object? categoryId = null,
    Object? periodId = null,
  }) {
    return _then(_self.copyWith(
      transactionId: null == transactionId
          ? _self.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      note: null == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      periodId: null == periodId
          ? _self.periodId
          : periodId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Transaction implements Transaction {
  const _Transaction(
      {required this.transactionId,
      required this.amount,
      required this.note,
      required this.date,
      required this.type,
      required this.userId,
      required this.categoryId,
      required this.periodId});
  factory _Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);

  @override
  final String transactionId;
  @override
  final double amount;
  @override
  final String note;
  @override
  final DateTime date;
  @override
  final TransactionType type;
  @override
  final String userId;
  @override
  final String categoryId;
  @override
  final String periodId;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TransactionCopyWith<_Transaction> get copyWith =>
      __$TransactionCopyWithImpl<_Transaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TransactionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Transaction &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.periodId, periodId) ||
                other.periodId == periodId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, transactionId, amount, note,
      date, type, userId, categoryId, periodId);

  @override
  String toString() {
    return 'Transaction(transactionId: $transactionId, amount: $amount, note: $note, date: $date, type: $type, userId: $userId, categoryId: $categoryId, periodId: $periodId)';
  }
}

/// @nodoc
abstract mixin class _$TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$TransactionCopyWith(
          _Transaction value, $Res Function(_Transaction) _then) =
      __$TransactionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String transactionId,
      double amount,
      String note,
      DateTime date,
      TransactionType type,
      String userId,
      String categoryId,
      String periodId});
}

/// @nodoc
class __$TransactionCopyWithImpl<$Res> implements _$TransactionCopyWith<$Res> {
  __$TransactionCopyWithImpl(this._self, this._then);

  final _Transaction _self;
  final $Res Function(_Transaction) _then;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? transactionId = null,
    Object? amount = null,
    Object? note = null,
    Object? date = null,
    Object? type = null,
    Object? userId = null,
    Object? categoryId = null,
    Object? periodId = null,
  }) {
    return _then(_Transaction(
      transactionId: null == transactionId
          ? _self.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      note: null == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      periodId: null == periodId
          ? _self.periodId
          : periodId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
