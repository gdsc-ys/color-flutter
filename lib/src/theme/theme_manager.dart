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
    GDSCThemeColor defaultColor = GDSCThemeColor.blue,
  }) {
    theme = GDSCTheme(currentTheme: defaultColor);
  }

  late GDSCTheme theme;

  ThemeData get themeData => theme.getThemeData();

  /// Change the color theme
  void setTheme(GDSCThemeColor color) {
    theme = GDSCTheme(currentTheme: color);
    notifyListeners();
  }
}
