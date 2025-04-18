// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionCategory _$TransactionCategoryFromJson(Map<String, dynamic> json) =>
    _TransactionCategory(
      categoryId: json['categoryId'] as String,
      name: json['name'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$TransactionCategoryToJson(
        _TransactionCategory instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'name': instance.name,
      'icon': instance.icon,
    };
