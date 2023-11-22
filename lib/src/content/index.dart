import 'dart:ui';

import 'package:gdsc_ys_color/gdsc_ys_color.dart';

class GrayScaleColor {
  final Color a1 = GDSCPalette.gray100;
  final Color a2 = GDSCPalette.gray300.withOpacity(0.84);
  final Color a3 = GDSCPalette.gray400;
  final Color a4 = GDSCPalette.gray600;
  final Color a5 = GDSCPalette.gray800;
  final Color a6 = GDSCPalette.gray1000.withOpacity(0.84);
  final Color a7 = GDSCPalette.gray1000;
}

class TintColor {
  final Color a1;
  final Color a2;
  final Color a3;

  TintColor({
    required this.a1,
    required this.a2,
    required this.a3,
  });
}

class TintColors {
  final TintColor magenta = TintColor(
    a1: GDSCPalette.magenta300,
    a2: GDSCPalette.magenta500,
    a3: GDSCPalette.magenta700,
  );

  final TintColor cyan = TintColor(
    a1: GDSCPalette.cyan300,
    a2: GDSCPalette.cyan500,
    a3: GDSCPalette.cyan700,
  );

  final TintColor orange = TintColor(
    a1: GDSCPalette.orange300,
    a2: GDSCPalette.orange500,
    a3: GDSCPalette.orange700,
  );

  final TintColor purple = TintColor(
    a1: GDSCPalette.purple300,
    a2: GDSCPalette.purple500,
    a3: GDSCPalette.purple700,
  );

  final TintColor blue = TintColor(
    a1: GDSCPalette.blue300.withOpacity(0.84),
    a2: GDSCPalette.blue500,
    a3: GDSCPalette.blue700,
  );

  final TintColor red = TintColor(
    a1: GDSCPalette.red300,
    a2: GDSCPalette.red500,
    a3: GDSCPalette.red700,
  );

  final TintColor yellow = TintColor(
    a1: GDSCPalette.yellow300,
    a2: GDSCPalette.yellow500,
    a3: GDSCPalette.yellow700,
  );

  final TintColor green = TintColor(
    a1: GDSCPalette.green300,
    a2: GDSCPalette.green500,
    a3: GDSCPalette.green700,
  );
}

class GDSCContentColors {
  final white = GDSCPalette.white;
  final black = GDSCPalette.black;
  final gray = GrayScaleColor();
  final tint = TintColors();
}
