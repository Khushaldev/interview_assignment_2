import 'package:flutter/material.dart';

abstract class Constants {
  static const String appName = 'Smart Budget';
  static const String appVersion = '1.0.0';
  static const String appBuildNumber = '1';
}

abstract class FilePath {
  static const String translations = 'lib/resources/translations';
  static const String transactionCategoryMLModel = 'lib/resources/ml_model/model.tflite';
  static const String labelEncoder = 'lib/resources/ml_model/label_encoder_classes.json';
  static const String vectorizerIdf = 'lib/resources/ml_model/vectorizer_idf.json';
  static const String vectorizerVocab = 'lib/resources/ml_model/vectorizer_vocab.json';
}

abstract class LocaleConstants {
  // language code
  static const String englishCode = 'en';
  static const String hindiCode = 'hi';

  //country code
  static const String usCountryCode = 'US';

  // locale's
  static Locale defaultEnglishLocale = Locale(englishCode, usCountryCode);
  static Locale englishLocale = Locale(englishCode);
  static Locale hindiLocale = Locale(hindiCode);

  static List<Locale> supportedLocales = [
    defaultEnglishLocale,
    englishLocale,
    hindiLocale,
  ];
}

abstract class AppDefaults {
  static const double padding = 16.0;

  static const double margin = 16.0;

  static const double borderRadius = 16.0;

  static const double elevation = 4.0;

  static const double iconSize = 24.0;

  static const double buttonHeight = 48.0;

  static const double appBarHeight = 56.0;

  static const double tabBarHeight = 48.0;

  static const double bottomSheetHeight = 300.0;

  static const double spentAmount = 0.0;
}

abstract class StaticAppData {}
