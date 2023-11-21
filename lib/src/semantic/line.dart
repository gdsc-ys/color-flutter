import 'dart:ui';

import 'package:gdsc_ys_color/gdsc_ys_color.dart';

class _SemanticLineTheme {
  final Color primary;
  final Color secondary;

  const _SemanticLineTheme({
    required this.primary,
    required this.secondary,
  });
}

class GDSCLineTheme {
  static const blue = _SemanticLineTheme(
      primary: GDSCPalette.coolGray400, secondary: GDSCPalette.coolGray800);
  static const green = _SemanticLineTheme(
      primary: GDSCPalette.coolGray500, secondary: GDSCPalette.coolGray800);
  static const yellow = _SemanticLineTheme(
      primary: GDSCPalette.warmGray400, secondary: GDSCPalette.warmGray800);
  static const red = _SemanticLineTheme(
      primary: GDSCPalette.warmGray400, secondary: GDSCPalette.warmGray800);
}
