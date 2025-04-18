import 'package:flutter/material.dart';
import 'package:interview_assignment_app/core/utils/extensions/theme_extension.dart';

import '../../../shared/widgets/spacing.dart';
import '../../../shared/widgets/text_fields/app_text_fields.dart';

class AddAmountTile extends StatelessWidget {
  const AddAmountTile({
    super.key,
    required this.controller,
    required this.focusNode,
  });

  final TextEditingController controller;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: verticalPadding16 + horizontalPadding16,
      decoration: BoxDecoration(
        color: context.theme.colorScheme.primaryContainer,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),
        ),
      ),
      child: AmountTextField(
        controller: controller,
        focusNode: focusNode,
      ),
    );
  }
}
