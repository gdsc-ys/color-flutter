import 'dart:ui';

import 'package:gdsc_ys_color/gdsc_ys_color.dart';

class SemanticBorderColors {
  final Color primary;
  final Color secondary;

  const SemanticBorderColors({
    required this.primary,
    required this.secondary,
  });
}

class GDSCBorderColors {
  static const blue = SemanticBorderColors(
      primary: GDSCPalette.coolGray400, secondary: GDSCPalette.coolGray800);
  static const green = SemanticBorderColors(
      primary: GDSCPalette.coolGray500, secondary: GDSCPalette.coolGray800);
  static const yellow = SemanticBorderColors(
      primary: GDSCPalette.warmGray400, secondary: GDSCPalette.warmGray800);
  static const red = SemanticBorderColors(
      primary: GDSCPalette.warmGray400, secondary: GDSCPalette.warmGray800);
}
