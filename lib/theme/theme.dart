import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';
import 'typography.dart';

class AppTheme {
  // Get light theme
  static ThemeData getLightTheme(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: const ColorScheme.light(
        primary: AppColors.lightPrimary,
        primaryContainer: AppColors.lightPrimary,
        secondary: AppColors.lightSecondary,
        secondaryContainer: AppColors.lightSecondaryVariant,
        surface: AppColors.lightSurface,
        error: AppColors.lightError,
        onPrimary: AppColors.lightOnPrimary,
        onSecondary: AppColors.lightOnSecondary,
        onSurface: AppColors.lightOnSurface,
        onError: AppColors.lightOnError,
      ),
      scaffoldBackgroundColor: AppColors.lightBackground,
      cardColor: AppColors.lightCardColor,
      dividerColor: AppColors.lightDividerColor,
      textTheme: AppTypography.getTextTheme(context, false),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: AppColors.lightPrimary,
        foregroundColor: AppColors.lightOnPrimary,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.lightPrimary,
        foregroundColor: AppColors.lightOnPrimary,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.lightSurface,
        selectedItemColor: AppColors.lightPrimary,
        unselectedItemColor: Colors.grey,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: AppColors.lightOnPrimary,
          backgroundColor: AppColors.lightPrimary,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.lightPrimary,
          side: const BorderSide(color: AppColors.lightPrimary),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.lightPrimary,
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.lightPrimary, width: 2.0),
        ),
      ),
      cardTheme: CardTheme(
        color: AppColors.lightCardColor,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      expansionTileTheme: const ExpansionTileThemeData(
        textColor: AppColors.lightPrimary,
        iconColor: AppColors.lightPrimary,
      ),
    );
  }

  // Get dark theme
  static ThemeData getDarkTheme(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.darkPrimary,
        primaryContainer: AppColors.darkPrimaryVariant,
        secondary: AppColors.darkSecondary,
        secondaryContainer: AppColors.darkSecondaryVariant,
        surface: AppColors.darkSurface,
        error: AppColors.darkError,
        onPrimary: AppColors.darkOnPrimary,
        onSecondary: AppColors.darkOnSecondary,
        onSurface: AppColors.darkOnSurface,
        onError: AppColors.darkOnError,
      ),
      scaffoldBackgroundColor: AppColors.darkBackground,
      cardColor: AppColors.darkCardColor,
      dividerColor: AppColors.darkDividerColor,
      textTheme: AppTypography.getTextTheme(context, true),
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: AppColors.darkSurface,
        foregroundColor: AppColors.darkOnSurface,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.darkPrimary,
        foregroundColor: AppColors.darkOnPrimary,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.darkSurface,
        selectedItemColor: AppColors.darkPrimary,
        unselectedItemColor: Colors.grey,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: AppColors.darkOnPrimary,
          backgroundColor: AppColors.darkPrimary,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.darkPrimary,
          side: const BorderSide(color: AppColors.darkPrimary),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.darkPrimary,
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.darkPrimary, width: 2.0),
        ),
      ),
      cardTheme: CardTheme(
        color: AppColors.darkCardColor,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      expansionTileTheme: const ExpansionTileThemeData(
        textColor: AppColors.darkPrimary,
        iconColor: AppColors.darkPrimary,
      ),
    );
  }
}
