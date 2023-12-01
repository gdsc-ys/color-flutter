import 'package:flutter/material.dart';
import 'package:gdsc_ys_color/src/semantic/index.dart';

import 'color_scheme.dart';
import '../enum/index.dart';

class GDSCTheme {
  GDSCThemeColor _currentTheme;
  late SemanticColors _colors;

  /// Semantic Colors
  /// returns the semantic colors of the current theme
  SemanticColors get colors => _colors;

  /// Changes the current theme
  set current(GDSCThemeColor theme) {
    _currentTheme = theme;
    _colors = GDSCSemanticColors(currentTheme: _currentTheme).colors;
  }

  static final ThemeData blue = ThemeData(
    colorScheme: GDSCColorScheme.blue,
    primaryColor: GDSCColorScheme.blue.primary,
  );

  static final ThemeData green = ThemeData(
    colorScheme: GDSCColorScheme.green,
    primaryColor: GDSCColorScheme.green.primary,
  );

  static final ThemeData yellow = ThemeData(
    colorScheme: GDSCColorScheme.yellow,
    primaryColor: GDSCColorScheme.yellow.primary,
  );

  static final ThemeData red = ThemeData(
    colorScheme: GDSCColorScheme.red,
    primaryColor: GDSCColorScheme.red.primary,
  );

  /// Returns the current theme's themeData
  ThemeData getThemeData() {
    switch (_currentTheme) {
      case GDSCThemeColor.blue:
        return blue;
      case GDSCThemeColor.green:
        return green;
      case GDSCThemeColor.yellow:
        return yellow;
      case GDSCThemeColor.red:
        return red;
    }
  }

  GDSCTheme({required GDSCThemeColor currentTheme})
      : _currentTheme = currentTheme {
    _colors = GDSCSemanticColors(currentTheme: _currentTheme).colors;
  }
}
