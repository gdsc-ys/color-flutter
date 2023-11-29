import 'package:flutter/material.dart';

import '../../gdsc_ys_color.dart';

class GDSCThemeManager extends ChangeNotifier {
  /// [GDSCThemeManager] constructor
  /// Select the default color theme
  GDSCThemeManager({
    GDSCColorTheme defaultColor = GDSCColorTheme.blue,
  }) {
    _themeData = _getThemeData(defaultColor);
  }

  ThemeData _themeData = GDSCTheme.green;

  ThemeData get themeData => _themeData;

  ThemeData _getThemeData(GDSCColorTheme color) {
    switch (color) {
      case GDSCColorTheme.red:
        return GDSCTheme.red;
      case GDSCColorTheme.yellow:
        return GDSCTheme.yellow;
      case GDSCColorTheme.green:
        return GDSCTheme.green;
      case GDSCColorTheme.blue:
        return GDSCTheme.blue;
    }
  }

  /// Change the color theme
  void setTheme(GDSCColorTheme color) {
    _themeData = _getThemeData(color);
    notifyListeners();
  }
}