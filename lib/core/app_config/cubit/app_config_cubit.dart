import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:interview_assignment_app/core/utils/log_console.dart';

import '../../../domain/models/language_model/app_language.dart';

part 'app_config_cubit.freezed.dart';
part 'app_config_cubit.g.dart';

class AppConfigCubit extends HydratedCubit<AppConfigState> {
  AppConfigCubit()
      : super(AppConfigState(
          languageCode: AppLanguage.defaultLocale.languageCode,
          isDarkTheme: false,
        ));

  void setLanguage({
    required BuildContext context,
    required Locale locale,
  }) async {
    try {
      await context.setLocale(locale);
      emit(state.copyWith(languageCode: locale.languageCode));
    } catch (e, st) {
      logConsole(e, st);
    }
  }

  void toggleTheme() {
    emit(state.copyWith(isDarkTheme: !state.isDarkTheme));
  }

  @override
  AppConfigState? fromJson(Map<String, dynamic> json) => AppConfigState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(AppConfigState state) => state.toJson();
}

@freezed
abstract class AppConfigState with _$AppConfigState {
  const factory AppConfigState({
    required String languageCode,
    required bool isDarkTheme,
  }) = _AppConfigState;

  factory AppConfigState.fromJson(Map<String, dynamic> json) => _$AppConfigStateFromJson(json);
}
