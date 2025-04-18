import 'package:flutter/material.dart';
import 'package:interview_assignment_app/core/utils/extensions/theme_extension.dart';
import 'package:interview_assignment_app/shared/widgets/text_fields/primary_text_field.dart';
import 'package:interview_assignment_app/theme/colors.dart';

class AddExpenseInpuInfoRow extends StatelessWidget {
  const AddExpenseInpuInfoRow({
    super.key,
    required this.label,
    this.controller,
  });

  final String label;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    final color = context.theme.brightness == Brightness.dark
        ? AppColors.darkOnPrimary
        : AppColors.lightOnBackground;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: context.subtitle1.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            SizedBox(
              width: 200,
              child: PrimaryTextField(
                hasBorder: false,
                hasUnderline: true,
                controller: controller,
                style: context.subtitle2.copyWith(
                  color: color,
                ),
                cursorColor: color,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
