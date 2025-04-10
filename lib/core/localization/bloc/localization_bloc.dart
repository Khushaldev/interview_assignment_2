import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:interview_assignment_app/core/localization/bloc/localization_event.dart';

import '../../utils/constants.dart';
import 'localization_state.dart';

class LocalizationBloc extends Bloc<LocalizationEvent, LocalizationState> {
  LocalizationBloc() //
      : super(LocalizationState(locale: LocaleConstants.defaultEnglishLocale)) {
    on<SetDefaultLocale>(_setLocaleOnStartup);
    on<SetUserSelectedLocale>(_onSetUserSelectedLocale);
  }

  void _setLocaleOnStartup(
    SetDefaultLocale event,
    Emitter<LocalizationState> emit,
  ) async {
    try {
      // await event.context.setLocale(state.locale);

      emit(LocalizationState(locale: state.locale));
    } catch (_) {
      emit(LocalizationState(locale: LocaleConstants.defaultEnglishLocale));
    }
  }

  void _onSetUserSelectedLocale(
    SetUserSelectedLocale event,
    Emitter<LocalizationState> emit,
  ) async {
    try {
      Locale newLocale = event.locale;
      final BuildContext context = event.context;
      if (!context.supportedLocales.contains(newLocale)) {
        newLocale = LocaleConstants.defaultEnglishLocale;
      }

      await context.setLocale(newLocale);
      if (state.locale != newLocale) {
        emit(LocalizationState(locale: newLocale));
      }
    } catch (_) {
      emit(LocalizationState(locale: LocaleConstants.defaultEnglishLocale));
    }
  }
}
