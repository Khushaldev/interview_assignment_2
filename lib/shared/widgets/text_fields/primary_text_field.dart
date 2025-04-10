import 'package:flutter/material.dart';
import 'package:interview_assignment_app/core/utils/extensions/theme_extension.dart';
import 'package:interview_assignment_app/shared/widgets/spacing.dart';

class PrimaryTextField extends StatelessWidget {
  const PrimaryTextField({
    super.key,
    this.controller,
    this.labelText,
    this.hintText,
    this.hasTitleOutside = false,
    this.isPassword = false,
    this.prefixText,
    this.keyboardType,
    this.validator,
    this.maxLines = 1,
    this.obscureText = false,
    this.suffixIcon,
    this.readOnly = false,
    this.onTap,
    this.prefixIcon,
  });

  final TextEditingController? controller;
  final String? labelText;
  final String? prefixText;
  final String? hintText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final bool hasTitleOutside;
  final bool isPassword;
  final int? maxLines;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool readOnly;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final unFocusedBorderColor = Colors.grey.shade400;
    final unFocusedBorderWidth = 0.8;
    final focusedBorderWidth = 2.0;
    final borderRadius = BorderRadius.circular(8.0);
    final textField = TextFormField(
      onTap: onTap,
      readOnly: readOnly,
      obscureText: obscureText,
      maxLines: maxLines,
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        prefixText: prefixText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        labelText: hasTitleOutside ? null : labelText,
        labelStyle: context.subtitle2,
        hintStyle: context.subtitle2.copyWith(
          fontWeight: FontWeight.bold,
          color: unFocusedBorderColor,
        ),

        border: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(
            width: unFocusedBorderWidth,
            color: unFocusedBorderColor,
          ),
        ), // Adjust radius as needed
        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(
            width: unFocusedBorderWidth,
            color: unFocusedBorderColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(
            width: focusedBorderWidth,
            color: context.theme.colorScheme.primary,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(
            width: focusedBorderWidth,
            color: context.theme.colorScheme.error,
          ),
        ),
      ),
      validator: validator,
    );

    if (hasTitleOutside) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText ?? '',
            style: context.subtitle2.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          verticalMargin4,
          textField,
        ],
      );
    }

    return textField;
  }
}
