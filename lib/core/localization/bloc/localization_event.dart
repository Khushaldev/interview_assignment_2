import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class LocalizationEvent extends Equatable {
  const LocalizationEvent();

  @override
  List<Object> get props => [];
}

class SetDefaultLocale extends LocalizationEvent {
  const SetDefaultLocale({required this.context});

  final BuildContext context;
}

class SetUserSelectedLocale extends LocalizationEvent {
  const SetUserSelectedLocale({required this.locale, required this.context});

  final Locale locale;
  final BuildContext context;
}
