import 'package:flutter/material.dart';
import 'package:interview_assignment_app/shared/widgets/text_fields/primary_text_field.dart';

Map<int, String> months = <int, String>{
  1: "January",
  2: "February",
  3: "March",
  4: "April",
  5: "May",
  6: "June",
  7: "July",
  8: "August",
  9: "September",
  10: "October",
  11: "November",
  12: "December",
};

class DatePickerField extends StatelessWidget {
  const DatePickerField({
    required this.selectedDate,
    required this.onDateSelected,
    super.key,
  });

  final DateTime? selectedDate;
  final ValueChanged<DateTime> onDateSelected;

  Future<void> _selectDate(BuildContext context) async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );
    if (pickedDate != null) onDateSelected(pickedDate);
  }

  @override
  Widget build(BuildContext context) {
    final String day = "${selectedDate?.day ?? 1}";
    final String month = months[selectedDate?.month ?? 1] ?? months.entries.first.value;
    final String year = "${selectedDate?.year ?? 1999}";
    return PrimaryTextField(
      onTap: () => _selectDate(context),
      readOnly: true,
      hasTitleOutside: true,
      labelText: 'Date',
      prefixIcon: Icon(Icons.calendar_today, size: 16),
      controller: TextEditingController(
        text: selectedDate != null ? "$day $month, $year" : "",
      ),
      validator: (value) => selectedDate == null ? "Select a date" : null,
    );
  }
}
