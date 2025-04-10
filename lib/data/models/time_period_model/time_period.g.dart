// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_period.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TimePeriod _$TimePeriodFromJson(Map<String, dynamic> json) => _TimePeriod(
      periodId: json['periodId'] as String,
      name: json['name'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$TimePeriodToJson(_TimePeriod instance) =>
    <String, dynamic>{
      'periodId': instance.periodId,
      'name': instance.name,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'userId': instance.userId,
    };
