import 'package:flutter/material.dart';
import 'package:gdsc_ys_color/src/semantic/index.dart';

import 'color_scheme.dart';
import '../enum/index.dart';

class GDSCTheme {

  GDSCColorTheme currentTheme;
  late GDSCSemanticColors _semanticColors;

  SemanticColors get colors =>
      _semanticColors.getColor();

  set current(GDSCColorTheme theme) {
    currentTheme = theme;
    _semanticColors = GDSCSemanticColors(currentTheme: currentTheme);
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

  ThemeData getTheme() {
    switch (currentTheme) {
      case GDSCColorTheme.blue:
        return blue;
      case GDSCColorTheme.green:
        return green;
      case GDSCColorTheme.yellow:
        return yellow;
      case GDSCColorTheme.red:
        return red;
    }
  }

  GDSCTheme({this.currentTheme = GDSCColorTheme.blue}) {
    _semanticColors = GDSCSemanticColors(currentTheme: currentTheme);
  }
}
