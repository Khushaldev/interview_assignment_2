import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class AppTypography {
  static TextTheme getTextTheme(BuildContext context, bool isDarkTheme) {
    final Color textColor = isDarkTheme ? Colors.white : Colors.black87;

    return GoogleFonts.interTextTheme(
      TextTheme(
        displayLarge: TextStyle(
          fontSize: 96,
          fontWeight: FontWeight.w300,
          color: textColor,
          letterSpacing: -1.5,
        ),
        displayMedium: TextStyle(
          fontSize: 60,
          fontWeight: FontWeight.w300,
          color: textColor,
          letterSpacing: -0.5,
        ),
        displaySmall: TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.w400,
          color: textColor,
        ),
        headlineMedium: TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.w400,
          color: textColor,
          letterSpacing: 0.25,
        ),
        headlineSmall: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w400,
          color: textColor,
        ),
        titleLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: textColor,
          letterSpacing: 0.15,
        ),
        titleMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: textColor,
          letterSpacing: 0.15,
        ),
        titleSmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: textColor,
          letterSpacing: 0.1,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: textColor,
          letterSpacing: 0.5,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: textColor,
          letterSpacing: 0.25,
        ),
        labelLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: textColor,
          letterSpacing: 1.25,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: textColor,
          letterSpacing: 0.4,
        ),
        labelSmall: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400,
          color: textColor,
          letterSpacing: 1.5,
        ),
      ),
    );
  }

  static TextStyle headline1(BuildContext context) => Theme.of(context).textTheme.displayLarge!;

  static TextStyle headline2(BuildContext context) => Theme.of(context).textTheme.displayMedium!;

  static TextStyle headline3(BuildContext context) => Theme.of(context).textTheme.displaySmall!;

  static TextStyle headline4(BuildContext context) => Theme.of(context).textTheme.headlineMedium!;

  static TextStyle headline5(BuildContext context) => Theme.of(context).textTheme.headlineSmall!;

  static TextStyle headline6(BuildContext context) => Theme.of(context).textTheme.titleLarge!;

  static TextStyle subtitle1(BuildContext context) => Theme.of(context).textTheme.titleMedium!;

  static TextStyle subtitle2(BuildContext context) => Theme.of(context).textTheme.titleSmall!;

  static TextStyle bodyText1(BuildContext context) => Theme.of(context).textTheme.bodyLarge!;

  static TextStyle bodyText2(BuildContext context) => Theme.of(context).textTheme.bodyMedium!;

  static TextStyle button(BuildContext context) => Theme.of(context).textTheme.labelLarge!;

  static TextStyle caption(BuildContext context) => Theme.of(context).textTheme.bodySmall!;

  static TextStyle overline(BuildContext context) => Theme.of(context).textTheme.labelSmall!;

  static TextStyle amountLarge(BuildContext context, {bool isExpense = false}) {
    return headline4(context).copyWith(
      fontWeight: FontWeight.bold,
      color: isExpense
          ? Theme.of(context).brightness == Brightness.dark
              ? AppColors.darkExpenseColor
              : AppColors.lightExpenseColor
          : Theme.of(context).brightness == Brightness.dark
              ? AppColors.darkIncomeColor
              : AppColors.lightIncomeColor,
    );
  }

  static TextStyle amountMedium(BuildContext context, {bool isExpense = false}) {
    return headline6(context).copyWith(
      fontWeight: FontWeight.bold,
      color: isExpense
          ? Theme.of(context).brightness == Brightness.dark
              ? AppColors.darkExpenseColor
              : AppColors.lightExpenseColor
          : Theme.of(context).brightness == Brightness.dark
              ? AppColors.darkIncomeColor
              : AppColors.lightIncomeColor,
    );
  }

  static TextStyle categoryText(BuildContext context) {
    return subtitle1(context).copyWith(
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle dateText(BuildContext context) {
    return bodyText2(context).copyWith(
      color: Theme.of(context).brightness == Brightness.dark
          ? AppColors.darkNeutralColor
          : AppColors.lightNeutralColor,
    );
  }
}
