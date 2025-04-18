import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_assignment_app/core/utils/extensions/theme_extension.dart';
import 'package:interview_assignment_app/theme/colors.dart';

import 'widgets/add_expense_form.dart';
import 'widgets/spent_amount_card.dart';
import 'widgets/time_period_chips.dart';
import '../../shared/widgets/spacing.dart';
import '../../core/app_config/cubit/app_config_cubit.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ElevatedButton(
          onPressed: () {
            _openAddExpenseBottomSheet(context);
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

  void _openAddExpenseBottomSheet(BuildContext context) {
    showModalBottomSheet(
      isDismissible: true,
      context: context,
      isScrollControlled: true,
      backgroundColor: context.theme.brightness == Brightness.light
          ? AppColors.lightBackground
          : AppColors.darkBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),
        ),
      ),
      builder: (context) {
        return DraggableScrollableSheet(
          snap: true,
          expand: false,
          minChildSize: 0.3,
          maxChildSize: 0.88,
          initialChildSize: 0.88,
          snapAnimationDuration: Duration(milliseconds: 800),
          builder: (context, scrollController) {
            return const AddExpenseForm();
          },
        );
      },
    );
  }
}
