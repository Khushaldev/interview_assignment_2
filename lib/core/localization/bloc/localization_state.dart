import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class LocalizationState extends Equatable {
  const LocalizationState({required this.locale});

  final Locale locale;

  @override
  List<Object?> get props => [];
}
