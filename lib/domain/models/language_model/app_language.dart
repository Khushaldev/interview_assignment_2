import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_language.freezed.dart';
part 'app_language.g.dart';

@freezed
abstract class AppLanguage with _$AppLanguage {
  const factory AppLanguage({
    required String code,
    required String name,
    String? countryCode,
  }) = _AppLanguage;

  factory AppLanguage.fromJson(Map<String, dynamic> json) => _$AppLanguageFromJson(json);

  static List<AppLanguage> languages = [
    AppLanguage(code: 'en', name: 'English', countryCode: 'US'),
    AppLanguage(code: 'en', name: 'English'),
    AppLanguage(code: 'hi', name: 'हिंदी'),
  ];

  static AppLanguage fromCode(String code) => languages.firstWhere(
        (element) => element.code == code,
        orElse: () => languages.first,
      );
  static Locale fromCodeLocale(String code) {
    final language = languages.firstWhere(
      (element) => element.code == code,
      orElse: () => languages.first,
    );

    return Locale(language.code, language.countryCode);
  }

  static AppLanguage fromName(String name) => languages.firstWhere(
        (element) => element.name == name,
        orElse: () => languages.first,
      );

  static AppLanguage get defaultLanguage => languages.first;

  static Locale get defaultLocale => Locale(
        defaultLanguage.code,
        defaultLanguage.countryCode,
      );

  static List<Locale> get allLocales =>
      languages.map((e) => Locale(e.code, e.countryCode)).toList();

  static List<AppLanguage> get all => languages;
}
