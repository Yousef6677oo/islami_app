import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  String currentLocal = "en";
  ThemeMode currentTheme = ThemeMode.dark;

  changeCurrentLocal({required String languageSelected}) {
    currentLocal = languageSelected;
    notifyListeners();
  }

  changeCurrentTheme({required ThemeMode newTheme}) {
    currentTheme = newTheme;
    notifyListeners();
  }
}
