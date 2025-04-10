import 'package:flutter/material.dart';
import 'package:interview_assignment_app/core/utils/extensions/theme_extension.dart';

import 'spacing.dart';

class AppChip extends StatelessWidget {
  const AppChip({
    super.key,
    required this.title,
    this.selected = false,
    this.onTap,
  });

  final String title;
  final bool selected;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: horizontalPadding8 + verticalPadding8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: selected //
              ? context.theme.colorScheme.primaryContainer
              : Colors.transparent,
          border: Border.all(
            color: context.theme.colorScheme.primaryContainer,
            width: 2.0,
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: context.theme.textTheme.bodySmall?.copyWith(
              color: selected
                  ? context.theme.colorScheme.onPrimaryContainer
                  : context.theme.colorScheme.onSurface,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
