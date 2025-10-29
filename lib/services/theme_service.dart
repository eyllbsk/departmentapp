import 'package:flutter/material.dart';

class ThemeService {
  ThemeService._();
  static final ThemeService instance = ThemeService._();


  final ValueNotifier<ThemeMode> mode = ValueNotifier(ThemeMode.light);

  bool get isDark => mode.value == ThemeMode.dark;

  void toggleDark(bool on) {
    mode.value = on ? ThemeMode.dark : ThemeMode.light;
  }
}
