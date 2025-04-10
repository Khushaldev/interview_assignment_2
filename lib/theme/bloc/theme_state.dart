import 'package:equatable/equatable.dart';

class ThemeState extends Equatable {
  final bool isLightTheme;

  const ThemeState({required this.isLightTheme});

  @override
  List<Object> get props => [isLightTheme];

  Map<String, dynamic> toMap() {
    return {
      'isLightTheme': isLightTheme,
    };
  }

  factory ThemeState.fromMap(Map<String, dynamic> map) {
    return ThemeState(
      isLightTheme: map['isLightTheme'] ?? true,
    );
  }
}
