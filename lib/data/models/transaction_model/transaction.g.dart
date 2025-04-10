// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Transaction _$TransactionFromJson(Map<String, dynamic> json) => _Transaction(
      transactionId: json['transactionId'] as String,
      amount: (json['amount'] as num).toDouble(),
      note: json['note'] as String,
      date: DateTime.parse(json['date'] as String),
      type: $enumDecode(_$TransactionTypeEnumMap, json['type']),
      userId: json['userId'] as String,
      categoryId: json['categoryId'] as String,
      periodId: json['periodId'] as String,
    );

Map<String, dynamic> _$TransactionToJson(_Transaction instance) =>
    <String, dynamic>{
      'transactionId': instance.transactionId,
      'amount': instance.amount,
      'note': instance.note,
      'date': instance.date.toIso8601String(),
      'type': _$TransactionTypeEnumMap[instance.type]!,
      'userId': instance.userId,
      'categoryId': instance.categoryId,
      'periodId': instance.periodId,
    };

const _$TransactionTypeEnumMap = {
  TransactionType.expense: 'expense',
  TransactionType.income: 'income',
  TransactionType.saving: 'saving',
};
