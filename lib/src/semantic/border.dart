import 'dart:ui';

import 'package:gdsc_ys_color/gdsc_ys_color.dart';

class _SemanticBorderTheme {
  final Color primary;
  final Color secondary;

  const _SemanticBorderTheme({
    required this.primary,
    required this.secondary,
  });
}

class GDSCBorderTheme {
  static const blue = _SemanticBorderTheme(
      primary: GDSCPalette.coolGray400, secondary: GDSCPalette.coolGray800);
  static const green = _SemanticBorderTheme(
      primary: GDSCPalette.coolGray500, secondary: GDSCPalette.coolGray800);
  static const yellow = _SemanticBorderTheme(
      primary: GDSCPalette.warmGray400, secondary: GDSCPalette.warmGray800);
  static const red = _SemanticBorderTheme(
      primary: GDSCPalette.warmGray400, secondary: GDSCPalette.warmGray800);
}
