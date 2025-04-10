import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_category.freezed.dart';
part 'transaction_category.g.dart';

@freezed
abstract class TransactionCategory with _$TransactionCategory {
  const factory TransactionCategory({
    required String categoryId,
    required String name,
    required String type,
    required String icon,
    required String userId,
  }) = _TransactionCategory;

  factory TransactionCategory.fromJson(Map<String, dynamic> json) =>
      _$TransactionCategoryFromJson(json);
}
