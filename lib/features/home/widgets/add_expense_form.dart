import 'package:flutter/material.dart';
import 'package:interview_assignment_app/core/utils/extensions/theme_extension.dart';

import '../../../core/utils/app_focus_behaviour.dart';
import '../../../data/models/transaction_category_model/transaction_category.dart';
import '../../../shared/widgets/spacing.dart';
import '../../../shared/widgets/text_fields/app_text_fields.dart';
import '../../../shared/widgets/text_fields/date_fields.dart';
import '../../../shared/widgets/text_fields/primary_text_field.dart';
import 'add_amount_tile.dart';
import 'add_expense_fields.dart';

class AddExpenseForm extends StatefulWidget {
  const AddExpenseForm({super.key});

  @override
  State<AddExpenseForm> createState() => _AddExpenseFormState();
}

class _AddExpenseFormState extends State<AddExpenseForm> {
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _amountController = TextEditingController();
  final _nameController = TextEditingController();
  String? _selectedCategory;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(_focusNode);
    });
    _submitForm();
  }

  void _submitForm() async {}

  @override
  void dispose() {
    _focusNode.dispose();
    _amountController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  // void predictCategory() async {
  //   final textProcessor = TextCategoryPredictor();
  //   await textProcessor.loadModel();
  //   final text = textProcessor.predictCategory('spa');
  //   print(text);
  // }

  @override
  Widget build(BuildContext context) {
    return AppFocusBehaviour(
      child: Column(
        children: [
          AddAmountTile(
            controller: _amountController,
            focusNode: _focusNode,
          ),
          Padding(
            padding: verticalPadding16 + horizontalPadding16,
            child: Column(
              spacing: 16.0,
              children: [
                AddExpenseInpuInfoRow(
                  label: 'Expense Name',
                  // value: 'Credit card bill',
                ),
                AddExpenseInpuInfoRow(
                  label: 'Note',
                  // value: 'Credit card bill',
                ),
                CategorySelector(
                  selectedCategory: _selectedCategory,
                  onCategorySelected: (category) {
                    setState(() {
                      _selectedCategory = category;
                    });
                  },
                ),
                DatePickerField(
                  selectedDate: DateTime.now(),
                  onDateSelected: (value) {},
                ),
              ],
            ),
          ),
          Spacer(),
          ElevatedButton(onPressed: () {}, child: Text('Save Expense')),
          verticalMargin24,
        ],
      ),
    );
  }
}

class CategorySelector extends StatelessWidget {
  const CategorySelector({
    required this.selectedCategory,
    required this.onCategorySelected,
    super.key,
  });

  final String? selectedCategory;
  final ValueChanged<String> onCategorySelected;

  @override
  Widget build(BuildContext context) {
    final selectedCategoryData = transactionCategories.firstWhere(
      (cat) => cat.name == selectedCategory,
      orElse: () => transactionCategories.last,
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Category',
          style: context.subtitle1.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        InkWell(
          onTap: () => _showCategoryshowModalBottomSheet(context),
          child: Row(
            children: [
              Text(
                selectedCategory ?? 'Other',
                style: context.subtitle2.copyWith(),
                overflow: TextOverflow.ellipsis,
              ),
              horizontalMargin12,
              if (selectedCategory != null) ...[
                Image.asset(
                  selectedCategoryData.icon,
                  height: 32,
                  width: 32,
                ),
              ] else ...[
                Image.asset(
                  'lib/resources/icons/other.png',
                  height: 32,
                  width: 32,
                ),
              ],
              // horizontalMargin12,
            ],
          ),
        ),
      ],
    );
  }

  void _showCategoryshowModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      isDismissible: true,
      context: context,
      isScrollControlled: true,
      // backgroundColor: Colors.transparent,
      builder: (context) {
        return DraggableScrollableSheet(
          snap: true,
          expand: false,
          minChildSize: 0.3,
          maxChildSize: 0.88,
          initialChildSize: 0.88,
          snapAnimationDuration: Duration(milliseconds: 300),
          builder: (context, scrollController) {
            return ExpenseCategoryList(
              scrollController: scrollController,
              onCategorySelected: onCategorySelected,
            );
          },
        );
      },
    );
  }
}

class ExpenseCategoryList extends StatelessWidget {
  const ExpenseCategoryList({
    super.key,
    this.scrollController,
    required this.onCategorySelected,
  });

  final ScrollController? scrollController;
  final void Function(String) onCategorySelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.theme.colorScheme.surface,
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
      ),
      child: SingleChildScrollView(
        controller: scrollController,
        child: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            spacing: 16.0,
            children: [
              verticalMargin16,
              Text(
                'Select Category',
                style: context.subtitle1.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              ExpenseCategoriesGrid(onCategorySelected: onCategorySelected),
            ],
          ),
        ),
      ),
    );
  }
}

class ExpenseCategoriesGrid extends StatelessWidget {
  const ExpenseCategoriesGrid({super.key, required this.onCategorySelected});

  final ValueChanged<String> onCategorySelected;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 1,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: transactionCategories.length,
      itemBuilder: (ctx, index) {
        final category = transactionCategories[index];
        return InkWell(
          onTap: () {
            onCategorySelected(category.name);
            Navigator.pop(context);
          },
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(category.icon, height: 32),
              SizedBox(height: 4),
              Text(category.name, style: TextStyle(fontSize: 12)),
            ],
          ),
        );
      },
    );
  }
}
