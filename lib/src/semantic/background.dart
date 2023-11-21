import 'dart:ui';

import 'package:gdsc_ys_color/gdsc_ys_color.dart';

class _BackgroundTheme {
  final Color solid;
  final Color gray;

  const _BackgroundTheme({
    required this.solid,
    required this.gray,
  });
}

class _SemanticBackgroundTheme {
  final _BackgroundTheme primary;
  final _BackgroundTheme secondary;
  final _BackgroundTheme tertiary;

  const _SemanticBackgroundTheme({
    required this.primary,
    required this.secondary,
    required this.tertiary,
  });
}

class GDSCBackgroundTheme {
  static const blue = _SemanticBackgroundTheme(
      primary:
          _BackgroundTheme(solid: GDSCPalette.white, gray: GDSCPalette.white),
      secondary: _BackgroundTheme(
          solid: GDSCPalette.blue100, gray: GDSCPalette.coolGray100),
      tertiary:
          _BackgroundTheme(solid: GDSCPalette.white, gray: GDSCPalette.white));

  static const green = _SemanticBackgroundTheme(
      primary:
          _BackgroundTheme(solid: GDSCPalette.white, gray: GDSCPalette.white),
      secondary: _BackgroundTheme(
          solid: GDSCPalette.green100, gray: GDSCPalette.coolGray100),
      tertiary:
          _BackgroundTheme(solid: GDSCPalette.white, gray: GDSCPalette.white));

  static const yellow = _SemanticBackgroundTheme(
      primary:
          _BackgroundTheme(solid: GDSCPalette.white, gray: GDSCPalette.white),
      secondary: _BackgroundTheme(
          solid: GDSCPalette.yellow100, gray: GDSCPalette.warmGray100),
      tertiary:
          _BackgroundTheme(solid: GDSCPalette.white, gray: GDSCPalette.white));

  static const red = _SemanticBackgroundTheme(
      primary:
          _BackgroundTheme(solid: GDSCPalette.white, gray: GDSCPalette.white),
      secondary: _BackgroundTheme(
          solid: GDSCPalette.red100, gray: GDSCPalette.warmGray100),
      tertiary:
          _BackgroundTheme(solid: GDSCPalette.white, gray: GDSCPalette.white));
}
