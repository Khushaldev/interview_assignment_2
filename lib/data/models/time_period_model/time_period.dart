import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_period.freezed.dart';
part 'time_period.g.dart';

@freezed
abstract class TimePeriod with _$TimePeriod {
  const factory TimePeriod({
    required String periodId,
    required String name,
    required DateTime startDate,
    required DateTime endDate,
    required String userId,
  }) = _TimePeriod;

  factory TimePeriod.fromJson(Map<String, dynamic> json) => _$TimePeriodFromJson(json);
}
