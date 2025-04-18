import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_assignment_app/core/utils/extensions/theme_extension.dart';

import '../../core/app_config/cubit/app_config_cubit.dart';
import '../../data/models/transaction_category_model/transaction_category.dart';
import '../../shared/widgets/spacing.dart';
import '../../shared/widgets/text_fields/app_text_fields.dart';
import '../../shared/widgets/text_fields/date_fields.dart';
import '../../shared/widgets/text_fields/primary_text_field.dart';

@RoutePage()
class AddExpensePage extends StatelessWidget {
  const AddExpensePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: ElevatedButton(
          onPressed: () {},
          child: Text('Save Expense'),
        ),
        // appBar: AppBar(
        //   centerTitle: false,
        //   title: Text(
        //     'Add Expense',
        //     style: context.theme.textTheme.headlineSmall?.copyWith(
        //       color: context.theme.colorScheme.onPrimary,
        //       fontWeight: FontWeight.bold,
        //     ),
        //   ),
        // actions: [
        // IconButton(
        //   icon: Icon(
        //     context.theme.brightness == Brightness.light //
        //         ? Icons.dark_mode
        //         : Icons.light_mode,
        //   ),
        //   onPressed: () {
        //     context.read<AppConfigCubit>().toggleTheme();
        //   },
        // ),
        // TextButton(
        //   onPressed: () {
        //     context.read<AppConfigCubit>().setLanguage(
        //           context: context,
        //           locale: Locale('en'),
        //         );

        //     Navigator.pop(context);
        //   },
        //   child: Text('Eng'),
        // ),
        // TextButton(
        //   onPressed: () {
        //     context.read<AppConfigCubit>().setLanguage(
        //           context: context,
        //           locale: Locale('hi'),
        //         );

        //     Navigator.pop(context);
        //   },
        //   child: Text('Hindi'),
        // ),
        // ],
        // ),
        body: SingleChildScrollView(child: AddExpenseForm()));
  }
}

class AddExpenseForm extends StatefulWidget {
  const AddExpenseForm({super.key});

  @override
  State<AddExpenseForm> createState() => _AddExpenseFormState();
}

class _AddExpenseFormState extends State<AddExpenseForm> {
  final _nameController = TextEditingController();
  String? _selectedCategory;

  @override
  void initState() {
    super.initState();
    _submitForm();
  }

  void _submitForm() async {}

  @override
  void dispose() {
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
    return Column(
      spacing: defaultMargin,
      children: [
        Container(
          height: 100,
          padding: verticalPadding16 + horizontalPadding16,
          decoration: BoxDecoration(
            color: context.theme.colorScheme.primaryContainer,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.0),
              topRight: Radius.circular(12.0),
            ),
          ),
          child: AmountTextField(controller: _nameController),
        ),
        DescriptionTextField(controller: _nameController),
        DatePickerField(
          selectedDate: DateTime.now(),
          onDateSelected: (value) {},
        ),
        CategorySelector(
          selectedCategory: _selectedCategory,
          onCategorySelected: (category) {
            setState(() {
              _selectedCategory = category;
            });
          },
        ),
      ],
    );
  }
}

final List<Map<String, dynamic>> _categories = [
  {'name': 'Food', 'icon': Icons.fastfood},
  {'name': 'Transport', 'icon': Icons.directions_car},
  {'name': 'Shopping', 'icon': Icons.shopping_bag},
  {'name': 'Entertainment', 'icon': Icons.movie},
  {'name': 'Health', 'icon': Icons.medical_services},
  {'name': 'Utilities', 'icon': Icons.bolt},
  {'name': 'Other', 'icon': Icons.category},
];

class CategorySelector extends StatelessWidget {
  const CategorySelector({
    required this.selectedCategory,
    required this.onCategorySelected,
    super.key,
  });

  final String? selectedCategory;
  final ValueChanged<String> onCategorySelected;

  void _showCategoryModal(BuildContext context) {
    showModalBottomSheet(
      isDismissible: true,
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => Navigator.of(context).pop(),
          child: DraggableScrollableSheet(
            snap: true,
            expand: true,
            builder: (context, scrollController) {
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
                      children: [
                        verticalMargin16,
                        Text(
                          'Select Category',
                          style: context.subtitle1.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        verticalMargin16,
                        GridView.builder(
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
                        ),
                        SizedBox(height: 16),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final selectedCategoryData = transactionCategories.firstWhere(
      (cat) => cat.name == selectedCategory,
      orElse: () => transactionCategories.last,
    );

    return PrimaryTextField(
      labelText: 'Category',
      prefixIcon: Image.asset(
        selectedCategoryData.icon,
        height: 2,
        width: 2,
      ),
      suffixIcon: Icon(Icons.arrow_drop_down),
      hintText: selectedCategory ?? 'Select a category',
      readOnly: true,
      hasTitleOutside: true,
      onTap: () => _showCategoryModal(context),
      validator: (value) => selectedCategory == null ? 'Please select a category' : null,
    );
  }
}
