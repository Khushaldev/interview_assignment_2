// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionCategory _$TransactionCategoryFromJson(Map<String, dynamic> json) =>
    _TransactionCategory(
      categoryId: json['categoryId'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      icon: json['icon'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$TransactionCategoryToJson(
        _TransactionCategory instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'name': instance.name,
      'type': instance.type,
      'icon': instance.icon,
      'userId': instance.userId,
    };
