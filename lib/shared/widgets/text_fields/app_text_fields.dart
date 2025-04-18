import 'package:flutter/material.dart';
import 'package:interview_assignment_app/core/utils/extensions/theme_extension.dart';
import 'package:interview_assignment_app/shared/widgets/text_fields/primary_text_field.dart';

class AmountTextField extends StatelessWidget {
  const AmountTextField({required this.controller, super.key, this.focusNode});

  final TextEditingController controller;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'USD \$',
          style: context.bodyText1.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        PrimaryTextField(
          focusNode: focusNode,
          style: context.headline4.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          hintStyle: context.headline4.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          hintText: '0.00',
          showCursor: false,
          hasBorder: false,
          controller: controller,
          keyboardType: TextInputType.numberWithOptions(decimal: true),
          validator: (value) {
            if (value == null || value.isEmpty) return "Amount is required";
            final amount = double.tryParse(value);
            if (amount == null) return "Enter a valid number";
            if (amount <= 0) return "Amount must be > 0";
            return null;
          },
        ),
      ],
    );
  }
}

class DescriptionTextField extends StatelessWidget {
  const DescriptionTextField({required this.controller, super.key});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Title',
          style: context.subtitle1.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
      ],
    );
  }
}
