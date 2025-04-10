import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'theme_event.dart';
import 'theme_state.dart';

class ThemeBloc extends HydratedBloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeState(isLightTheme: true)) {
    on<ToggleTheme>(_onToggleTheme);
    on<SetLightTheme>(_onSetLightTheme);
    on<SetDarkTheme>(_onSetDarkTheme);
  }

  void _onToggleTheme(ToggleTheme event, Emitter<ThemeState> emit) {
    emit(ThemeState(isLightTheme: !state.isLightTheme));
  }

  void _onSetLightTheme(SetLightTheme event, Emitter<ThemeState> emit) {
    emit(const ThemeState(isLightTheme: true));
  }

  void _onSetDarkTheme(SetDarkTheme event, Emitter<ThemeState> emit) {
    emit(const ThemeState(isLightTheme: false));
  }

  @override
  ThemeState fromJson(Map<String, dynamic> json) {
    return ThemeState.fromMap(json);
  }

  @override
  Map<String, dynamic> toJson(ThemeState state) {
    return state.toMap();
  }
}
