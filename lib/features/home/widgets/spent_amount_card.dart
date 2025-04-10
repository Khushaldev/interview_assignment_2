import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:interview_assignment_app/core/utils/extensions/theme_extension.dart';

import '../../../generated/locale_keys.g.dart';
import '../../../shared/widgets/spacing.dart';

class SpentAmountCard extends StatelessWidget {
  const SpentAmountCard(
      {super.key,
      this.userCurrency = '\$',
      this.selectedTimePeriod = 'Today',
      this.selectedAmount = 0});

  final String userCurrency;
  final String selectedTimePeriod;
  final int selectedAmount;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: horizontalPadding16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${LocaleKeys.spent.tr()} $selectedTimePeriod',
            style: context.theme.textTheme.bodyLarge?.copyWith(
              color: context.theme.colorScheme.onSurface,
            ),
          ),
          verticalMargin8,
          Text(
            '$userCurrency $selectedAmount',
            style: context.theme.textTheme.headlineLarge?.copyWith(
              color: context.theme.colorScheme.onSurface,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
