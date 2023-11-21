import 'package:flutter/material.dart';
import 'package:gdsc_ys_color/gdsc_ys_color.dart';

class GDSCColorScheme {
  static ColorScheme blue = const ColorScheme.light(
    primary: GDSCPalette.blue500,
    onPrimary: GDSCPalette.white,
    secondary: GDSCPalette.blue300,
    onSecondary: GDSCPalette.blue900,
    tertiary: GDSCPalette.coolGray200,
    onTertiary: GDSCPalette.coolGray700,
    background: GDSCPalette.white,
    surface: GDSCPalette.white,
    outline: GDSCPalette.coolGray400,
  );

  static ColorScheme green = const ColorScheme.light(
    primary: GDSCPalette.green500,
    onPrimary: GDSCPalette.white,
    secondary: GDSCPalette.green300,
    onSecondary: GDSCPalette.green900,
    tertiary: GDSCPalette.coolGray200,
    onTertiary: GDSCPalette.coolGray700,
    background: GDSCPalette.white,
    surface: GDSCPalette.white,
    outline: GDSCPalette.coolGray500,
  );

  static ColorScheme yellow = const ColorScheme.light(
    primary: GDSCPalette.yellow800,
    onPrimary: GDSCPalette.white,
    secondary: GDSCPalette.yellow300,
    onSecondary: GDSCPalette.yellow1000,
    tertiary: GDSCPalette.warmGray200,
    onTertiary: GDSCPalette.warmGray700,
    background: GDSCPalette.white,
    surface: GDSCPalette.white,
    outline: GDSCPalette.warmGray400,
  );

  static ColorScheme red = const ColorScheme.light(
    primary: GDSCPalette.red600,
    onPrimary: GDSCPalette.white,
    secondary: GDSCPalette.red300,
    onSecondary: GDSCPalette.red900,
    tertiary: GDSCPalette.warmGray200,
    onTertiary: GDSCPalette.warmGray700,
    background: GDSCPalette.white,
    surface: GDSCPalette.white,
    outline: GDSCPalette.warmGray400,
  );
}
