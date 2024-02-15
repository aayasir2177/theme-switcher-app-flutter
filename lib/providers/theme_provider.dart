import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeMode = ThemeData.light();

  ThemeData get themeMode => _themeMode;

  toggleTheme() {
    if (_themeMode == ThemeData.light()) {
      _themeMode = ThemeData.dark();
    } else {
      _themeMode = ThemeData.light();
    }
    notifyListeners();
  }
}
