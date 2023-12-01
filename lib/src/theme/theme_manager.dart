import 'package:flutter/material.dart';

import '../../gdsc_ys_color.dart';

/// A class that manages the theme of the app.
/// It is a ChangeNotifier, so it can be used with the Provider package.
///
/// ## Using GDSCThemeManager with Provider to support dynamic theming
///
/// You can use GDSCThemeManager with Provider to support dynamic theming.
/// ** See code in examples/dyanmic_theme/lib/dynamic_theme_with_provider.dart **
class GDSCThemeManager extends ChangeNotifier {
  GDSCThemeManager({
    GDSCColorTheme defaultColor = GDSCColorTheme.blue,
  }) {
    _themeData = _getThemeData(defaultColor);
  }

  late ThemeData _themeData;

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
