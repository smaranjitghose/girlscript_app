import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeChanger extends ChangeNotifier {
  ThemeData _themeData;

  ThemeChanger(this._themeData);

  getTheme() => _themeData;

  isDarkModeEnabled() => _themeData == ThemeData.dark();

  switchTheme() {
    if (_themeData == ThemeData.light()) {
      _themeData = ThemeData.dark();
      notifyListeners();
    } else {
      _themeData = ThemeData.light();
      notifyListeners();
    }
  }
}
