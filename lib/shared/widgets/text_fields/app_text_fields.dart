import 'package:flutter/widgets.dart';
import 'package:interview_assignment_app/shared/widgets/text_fields/primary_text_field.dart';

class AmountTextField extends StatelessWidget {
  const AmountTextField({required this.controller, super.key});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return PrimaryTextField(
      hasTitleOutside: true,
      controller: controller,
      labelText: 'Amount',
      hintText: '0.00',
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      validator: (value) {
        if (value == null || value.isEmpty) return "Amount is required";
        final amount = double.tryParse(value);
        if (amount == null) return "Enter a valid number";
        if (amount <= 0) return "Amount must be > 0";
        return null;
      },
    );
  }
}

class DescriptionTextField extends StatelessWidget {
  const DescriptionTextField({required this.controller, super.key});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return PrimaryTextField(
      hasTitleOutside: true,
      controller: controller,
      labelText: 'Description',
      hintText: 'What do you spend on?',
      maxLines: 3,
      validator: (value) {
        if (value == null || value.isEmpty) return "Description is required";
        if (value.split(' ').length > 40) return "Max 40 words allowed";
        return null;
      },
    );
  }
}
