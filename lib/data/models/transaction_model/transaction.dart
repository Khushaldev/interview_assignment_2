import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';

enum TransactionType { expense, income, saving }

@freezed
abstract class Transaction with _$Transaction {
  const factory Transaction({
    required String transactionId,
    required double amount,
    required String note,
    required DateTime date,
    required TransactionType type,
    required String userId,
    required String categoryId,
    required String periodId,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);
}
