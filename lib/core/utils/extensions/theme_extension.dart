import 'package:flutter/material.dart';

extension TextStyles on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextStyle get headline1 => theme.textTheme.displayLarge!;
  TextStyle get headline2 => theme.textTheme.displayMedium!;
  TextStyle get headline3 => theme.textTheme.displaySmall!;
  TextStyle get headline4 => theme.textTheme.headlineMedium!;
  TextStyle get headline5 => theme.textTheme.headlineSmall!;
  TextStyle get headline6 => theme.textTheme.titleLarge!;
  TextStyle get subtitle1 => theme.textTheme.titleMedium!;
  TextStyle get subtitle2 => theme.textTheme.titleSmall!;
  TextStyle get bodyText1 => theme.textTheme.bodyLarge!;
  TextStyle get bodyText2 => theme.textTheme.bodyMedium!;
  TextStyle get button => theme.textTheme.labelLarge!;
  TextStyle get caption => theme.textTheme.bodySmall!;
  TextStyle get overline => theme.textTheme.labelSmall!;
}
