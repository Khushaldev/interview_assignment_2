import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_category.freezed.dart';
part 'transaction_category.g.dart';

@freezed
abstract class TransactionCategory with _$TransactionCategory {
  const factory TransactionCategory({
    required String categoryId,
    required String name,
    required String icon,
  }) = _TransactionCategory;

  factory TransactionCategory.fromJson(Map<String, dynamic> json) =>
      _$TransactionCategoryFromJson(json);
}

List<TransactionCategory> transactionCategories = [
  TransactionCategory(
    categoryId: 'c01',
    name: 'Apparel',
    icon: 'lib/resources/icons/apparel.png',
  ),
  TransactionCategory(
    categoryId: 'c02',
    name: 'Banking',
    icon: 'lib/resources/icons/banking.png',
  ),
  TransactionCategory(
    categoryId: 'c03',
    name: 'Business',
    icon: 'lib/resources/icons/business.png',
  ),
  TransactionCategory(
    categoryId: 'c04',
    name: 'Children',
    icon: 'lib/resources/icons/children.png',
  ),
  TransactionCategory(
    categoryId: 'c05',
    name: 'Clothing',
    icon: 'lib/resources/icons/clothing.png',
  ),
  TransactionCategory(
    categoryId: 'c06',
    name: 'Credit Cards',
    icon: 'lib/resources/icons/credit_cards.png',
  ),
  TransactionCategory(
    categoryId: 'c07',
    name: 'Donations',
    icon: 'lib/resources/icons/donations.png',
  ),
  TransactionCategory(
    categoryId: 'c08',
    name: 'Education',
    icon: 'lib/resources/icons/education.png',
  ),
  TransactionCategory(
    categoryId: 'c09',
    name: 'Electronics',
    icon: 'lib/resources/icons/electronics.png',
  ),
  TransactionCategory(
    categoryId: 'c10',
    name: 'Entertainment',
    icon: 'lib/resources/icons/entertainment.png',
  ),
  TransactionCategory(
    categoryId: 'c11',
    name: 'Financial',
    icon: 'lib/resources/icons/financial.png',
  ),
  TransactionCategory(
    categoryId: 'c12',
    name: 'Food',
    icon: 'lib/resources/icons/food.png',
  ),
  TransactionCategory(
    categoryId: 'c13',
    name: 'Food & Dining',
    icon: 'lib/resources/icons/food_dining.png',
  ),
  TransactionCategory(
    categoryId: 'c14',
    name: 'Gifts',
    icon: 'lib/resources/icons/gifts.png',
  ),
  TransactionCategory(
    categoryId: 'c15',
    name: 'Health',
    icon: 'lib/resources/icons/health.png',
  ),
  TransactionCategory(
    categoryId: 'c16',
    name: 'Housing',
    icon: 'lib/resources/icons/housing.png',
  ),
  TransactionCategory(
    categoryId: 'c17',
    name: 'Insurance',
    icon: 'lib/resources/icons/insurance.png',
  ),
  TransactionCategory(
    categoryId: 'c18',
    name: 'Investments',
    icon: 'lib/resources/icons/investments.png',
  ),
  TransactionCategory(
    categoryId: 'c19',
    name: 'Loans',
    icon: 'lib/resources/icons/loans.png',
  ),
  TransactionCategory(
    categoryId: 'c20',
    name: 'Luxury',
    icon: 'lib/resources/icons/luxury.png',
  ),
  TransactionCategory(
    categoryId: 'c21',
    name: 'Personal Care',
    icon: 'lib/resources/icons/personal_care.png',
  ),
  TransactionCategory(
    categoryId: 'c22',
    name: 'Pets',
    icon: 'lib/resources/icons/pets.png',
  ),
  TransactionCategory(
    categoryId: 'c23',
    name: 'Shopping',
    icon: 'lib/resources/icons/shopping.png',
  ),
  TransactionCategory(
    categoryId: 'c24',
    name: 'Software',
    icon: 'lib/resources/icons/software.png',
  ),
  TransactionCategory(
    categoryId: 'c25',
    name: 'Subscriptions',
    icon: 'lib/resources/icons/subscriptions.png',
  ),
  TransactionCategory(
    categoryId: 'c26',
    name: 'Taxes',
    icon: 'lib/resources/icons/taxes.png',
  ),
  TransactionCategory(
    categoryId: 'c27',
    name: 'Transport',
    icon: 'lib/resources/icons/transport.png',
  ),
  TransactionCategory(
    categoryId: 'c28',
    name: 'Travel',
    icon: 'lib/resources/icons/travel.png',
  ),
  TransactionCategory(
    categoryId: 'c29',
    name: 'Utilities',
    icon: 'lib/resources/icons/utilities.png',
  ),
  TransactionCategory(
    categoryId: 'c30',
    name: 'Other',
    icon: 'lib/resources/icons/other.png',
  ),
];
