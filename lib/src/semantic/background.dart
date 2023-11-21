import 'dart:ui';

import 'package:gdsc_ys_color/gdsc_ys_color.dart';

class BackgroundColors {
  final Color solid;
  final Color gray;

  const BackgroundColors({
    required this.solid,
    required this.gray,
  });
}

class SemanticBackgroundColors {
  final BackgroundColors primary;
  final BackgroundColors secondary;
  final BackgroundColors tertiary;

  const SemanticBackgroundColors({
    required this.primary,
    required this.secondary,
    required this.tertiary,
  });
}

class GDSCBackgroundColors {
  static const blue = SemanticBackgroundColors(
      primary:
          BackgroundColors(solid: GDSCPalette.white, gray: GDSCPalette.white),
      secondary: BackgroundColors(
          solid: GDSCPalette.blue100, gray: GDSCPalette.coolGray100),
      tertiary:
          BackgroundColors(solid: GDSCPalette.white, gray: GDSCPalette.white));

  static const green = SemanticBackgroundColors(
      primary:
          BackgroundColors(solid: GDSCPalette.white, gray: GDSCPalette.white),
      secondary: BackgroundColors(
          solid: GDSCPalette.green100, gray: GDSCPalette.coolGray100),
      tertiary:
          BackgroundColors(solid: GDSCPalette.white, gray: GDSCPalette.white));

  static const yellow = SemanticBackgroundColors(
      primary:
          BackgroundColors(solid: GDSCPalette.white, gray: GDSCPalette.white),
      secondary: BackgroundColors(
          solid: GDSCPalette.yellow100, gray: GDSCPalette.warmGray100),
      tertiary:
          BackgroundColors(solid: GDSCPalette.white, gray: GDSCPalette.white));

  static const red = SemanticBackgroundColors(
      primary:
          BackgroundColors(solid: GDSCPalette.white, gray: GDSCPalette.white),
      secondary: BackgroundColors(
          solid: GDSCPalette.red100, gray: GDSCPalette.warmGray100),
      tertiary:
          BackgroundColors(solid: GDSCPalette.white, gray: GDSCPalette.white));
}
