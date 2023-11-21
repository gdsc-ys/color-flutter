import 'dart:ui';

import 'package:gdsc_ys_color/gdsc_ys_color.dart';

class SemanticLineColors {
  final Color primary;
  final Color secondary;

  const SemanticLineColors({
    required this.primary,
    required this.secondary,
  });
}

class GDSCLineColors {
  static const blue = SemanticLineColors(
      primary: GDSCPalette.coolGray400, secondary: GDSCPalette.coolGray800);
  static const green = SemanticLineColors(
      primary: GDSCPalette.coolGray500, secondary: GDSCPalette.coolGray800);
  static const yellow = SemanticLineColors(
      primary: GDSCPalette.warmGray400, secondary: GDSCPalette.warmGray800);
  static const red = SemanticLineColors(
      primary: GDSCPalette.warmGray400, secondary: GDSCPalette.warmGray800);
}
