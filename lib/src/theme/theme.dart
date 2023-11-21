import 'package:flutter/material.dart';
import 'package:gdsc_ys_color/src/semantic/index.dart';

import 'color_scheme.dart';
import '../enum/index.dart';

class GDSCTheme {
  // default theme is set to blue.
  GDSCColorTheme currentTheme;
  late GDSCSemanticColor _colors;

  GDSCSemanticColor get colors =>
      _colors;

  set theme(GDSCColorTheme theme) {
    currentTheme = theme;
    _colors = GDSCSemanticColor(currentTheme: currentTheme);
  }

  static final ThemeData blue = ThemeData(
    colorScheme: GDSCColorScheme.blue,
  );

  static final ThemeData green = ThemeData(
    colorScheme: GDSCColorScheme.green,
  );

  static final ThemeData yellow = ThemeData(
    colorScheme: GDSCColorScheme.yellow,
  );

  static final ThemeData red = ThemeData(
    colorScheme: GDSCColorScheme.red,
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

  GDSCTheme({
    required this.currentTheme,
  });
}
