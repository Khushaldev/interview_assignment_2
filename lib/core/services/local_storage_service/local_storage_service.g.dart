// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_storage_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppCache _$AppCacheFromJson(Map<String, dynamic> json) => _AppCache(
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) =>
                  TransactionCategory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      timePeriods: (json['timePeriods'] as List<dynamic>?)
              ?.map((e) => TimePeriod.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      transactions: (json['transactions'] as List<dynamic>?)
              ?.map((e) => Transaction.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$AppCacheToJson(_AppCache instance) => <String, dynamic>{
      'categories': instance.categories,
      'timePeriods': instance.timePeriods,
      'transactions': instance.transactions,
    };
