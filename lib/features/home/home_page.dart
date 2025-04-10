import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_assignment_app/core/utils/extensions/theme_extension.dart';
import 'package:interview_assignment_app/shared/widgets/text_fields/primary_text_field.dart';

import '../../core/app_config/cubit/app_config_cubit.dart';
import '../../core/routes/router.gr.dart';
import '../../shared/widgets/spacing.dart';
import '../../shared/widgets/text_fields/app_text_fields.dart';
import '../../shared/widgets/text_fields/date_fields.dart';
import 'widgets/spent_amount_card.dart';
import 'widgets/time_period_chips.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ElevatedButton(
          onPressed: () {
            context.pushRoute(AddTransactionRoute());
          },
          child: Text('Add Expense')),
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'Smart Budget',
          style: context.theme.textTheme.headlineSmall?.copyWith(
            color: context.theme.colorScheme.onPrimary,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              context.theme.brightness == Brightness.light //
                  ? Icons.dark_mode
                  : Icons.light_mode,
            ),
            onPressed: () {
              context.read<AppConfigCubit>().toggleTheme();
            },
          ),
        ],
      ),
      body: Column(
        children: [
          verticalMargin24,
          TimePeriodChips(),
          verticalMargin24,
          SpentAmountCard(),
        ],
      ),
    );
  }
}

@RoutePage()
class AddTransactionPage extends StatelessWidget {
  const AddTransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: ElevatedButton(
          onPressed: () {},
          child: Text('Submit Expense'),
        ),
        appBar: AppBar(
          centerTitle: false,
          title: Text(
            'Smart Budget',
            style: context.theme.textTheme.headlineSmall?.copyWith(
              color: context.theme.colorScheme.onPrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                context.theme.brightness == Brightness.light //
                    ? Icons.dark_mode
                    : Icons.light_mode,
              ),
              onPressed: () {
                context.read<AppConfigCubit>().toggleTheme();
              },
            ),
            TextButton(
              onPressed: () {
                context.read<AppConfigCubit>().setLanguage(
                      context: context,
                      locale: Locale('en'),
                    );

                Navigator.pop(context);
              },
              child: Text('Eng'),
            ),
            TextButton(
              onPressed: () {
                context.read<AppConfigCubit>().setLanguage(
                      context: context,
                      locale: Locale('hi'),
                    );

                Navigator.pop(context);
              },
              child: Text('Hindi'),
            ),
          ],
        ),
        body: TransactionForm());
  }
}

class TransactionForm extends StatefulWidget {
  const TransactionForm({super.key});

  @override
  State<TransactionForm> createState() => _TransactionFormState();
}

class _TransactionFormState extends State<TransactionForm> {
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
    return Padding(
      padding: verticalPadding16 + horizontalPadding24,
      child: Column(
        spacing: defaultMargin,
        children: [
          AmountTextField(controller: _nameController),
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
      ),
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
      context: context,
      builder: (ctx) => Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Select Category', style: Theme.of(context).textTheme.titleMedium),
            SizedBox(height: 16),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: 1,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: _categories.length,
              itemBuilder: (ctx, index) {
                final category = _categories[index];
                return InkWell(
                  onTap: () {
                    onCategorySelected(category['name']);
                    Navigator.pop(context);
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(category['icon'], size: 30),
                      SizedBox(height: 4),
                      Text(category['name'], style: TextStyle(fontSize: 12)),
                    ],
                  ),
                );
              },
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final selectedCategoryData = _categories.firstWhere(
      (cat) => cat['name'] == selectedCategory,
      orElse: () => _categories.last,
    );

    return PrimaryTextField(
      labelText: 'Category',
      prefixIcon: Icon(selectedCategoryData['icon']),
      suffixIcon: Icon(Icons.arrow_drop_down),
      hintText: selectedCategory ?? 'Select a category',
      readOnly: true,
      hasTitleOutside: true,
      onTap: () => _showCategoryModal(context),
      validator: (value) => selectedCategory == null ? 'Please select a category' : null,
    );
  }
}
