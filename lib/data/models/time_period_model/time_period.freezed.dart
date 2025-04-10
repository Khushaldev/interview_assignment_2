// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_period.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TimePeriod {
  String get periodId;
  String get name;
  DateTime get startDate;
  DateTime get endDate;
  String get userId;

  /// Create a copy of TimePeriod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TimePeriodCopyWith<TimePeriod> get copyWith =>
      _$TimePeriodCopyWithImpl<TimePeriod>(this as TimePeriod, _$identity);

  /// Serializes this TimePeriod to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TimePeriod &&
            (identical(other.periodId, periodId) ||
                other.periodId == periodId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, periodId, name, startDate, endDate, userId);

  @override
  String toString() {
    return 'TimePeriod(periodId: $periodId, name: $name, startDate: $startDate, endDate: $endDate, userId: $userId)';
  }
}

/// @nodoc
abstract mixin class $TimePeriodCopyWith<$Res> {
  factory $TimePeriodCopyWith(
          TimePeriod value, $Res Function(TimePeriod) _then) =
      _$TimePeriodCopyWithImpl;
  @useResult
  $Res call(
      {String periodId,
      String name,
      DateTime startDate,
      DateTime endDate,
      String userId});
}

/// @nodoc
class _$TimePeriodCopyWithImpl<$Res> implements $TimePeriodCopyWith<$Res> {
  _$TimePeriodCopyWithImpl(this._self, this._then);

  final TimePeriod _self;
  final $Res Function(TimePeriod) _then;

  /// Create a copy of TimePeriod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? periodId = null,
    Object? name = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? userId = null,
  }) {
    return _then(_self.copyWith(
      periodId: null == periodId
          ? _self.periodId
          : periodId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _TimePeriod implements TimePeriod {
  const _TimePeriod(
      {required this.periodId,
      required this.name,
      required this.startDate,
      required this.endDate,
      required this.userId});
  factory _TimePeriod.fromJson(Map<String, dynamic> json) =>
      _$TimePeriodFromJson(json);

  @override
  final String periodId;
  @override
  final String name;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String userId;

  /// Create a copy of TimePeriod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TimePeriodCopyWith<_TimePeriod> get copyWith =>
      __$TimePeriodCopyWithImpl<_TimePeriod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TimePeriodToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimePeriod &&
            (identical(other.periodId, periodId) ||
                other.periodId == periodId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, periodId, name, startDate, endDate, userId);

  @override
  String toString() {
    return 'TimePeriod(periodId: $periodId, name: $name, startDate: $startDate, endDate: $endDate, userId: $userId)';
  }
}

/// @nodoc
abstract mixin class _$TimePeriodCopyWith<$Res>
    implements $TimePeriodCopyWith<$Res> {
  factory _$TimePeriodCopyWith(
          _TimePeriod value, $Res Function(_TimePeriod) _then) =
      __$TimePeriodCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String periodId,
      String name,
      DateTime startDate,
      DateTime endDate,
      String userId});
}

/// @nodoc
class __$TimePeriodCopyWithImpl<$Res> implements _$TimePeriodCopyWith<$Res> {
  __$TimePeriodCopyWithImpl(this._self, this._then);

  final _TimePeriod _self;
  final $Res Function(_TimePeriod) _then;

  /// Create a copy of TimePeriod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? periodId = null,
    Object? name = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? userId = null,
  }) {
    return _then(_TimePeriod(
      periodId: null == periodId
          ? _self.periodId
          : periodId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
