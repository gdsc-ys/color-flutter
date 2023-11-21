import 'dart:ui';

import 'package:gdsc_ys_color/gdsc_ys_color.dart';

class TabBarLabelColors {
  final Color common;
  final Color active;
  final Color pressed;
  final Color loading;
  final Color disabled;

  const TabBarLabelColors({
    required this.common,
    required this.active,
    required this.pressed,
    required this.loading,
    required this.disabled,
  });
}

class TabBarBackgroundColors {
  final Color active;
  final Color pressed;

  const TabBarBackgroundColors({
    required this.active,
    required this.pressed,
  });
}

class TabBarColors {
  final TabBarLabelColors label;
  final TabBarBackgroundColors background;

  const TabBarColors({
    required this.label,
    required this.background,
  });
}

class SemanticTabBarColors {
  final TabBarColors primary;
  final TabBarColors secondary;
  final TabBarColors tertiary;

  const SemanticTabBarColors({
    required this.primary,
    required this.secondary,
    required this.tertiary,
  });
}

class GDSCTabBarColors {
  static var blue = SemanticTabBarColors(
      primary: TabBarColors(
          label: const TabBarLabelColors(
              common: GDSCPalette.blue500,
              active: GDSCPalette.blue600,
              pressed: GDSCPalette.blue700,
              loading: GDSCPalette.blue700,
              disabled: GDSCPalette.coolGray400),
          background: TabBarBackgroundColors(
              active: GDSCPalette.coolGray200.withOpacity(0.64),
              pressed: GDSCPalette.coolGray200.withOpacity(0.72))),
      secondary: TabBarColors(
          label: const TabBarLabelColors(
              common: GDSCPalette.blue500,
              active: GDSCPalette.blue600,
              pressed: GDSCPalette.blue700,
              loading: GDSCPalette.blue700,
              disabled: GDSCPalette.coolGray400),
          background: TabBarBackgroundColors(
              active: GDSCPalette.blue300.withOpacity(0.64),
              pressed: GDSCPalette.blue300.withOpacity(0.72))),
      tertiary: TabBarColors(
          label: const TabBarLabelColors(
              common: GDSCPalette.coolGray800,
              active: GDSCPalette.coolGray900,
              pressed: GDSCPalette.coolGray1000,
              loading: GDSCPalette.coolGray1000,
              disabled: GDSCPalette.coolGray400),
          background: TabBarBackgroundColors(
              active: GDSCPalette.coolGray200.withOpacity(0.64),
              pressed: GDSCPalette.coolGray200.withOpacity(0.72))));

  static var green = SemanticTabBarColors(
      primary: TabBarColors(
          label: const TabBarLabelColors(
              common: GDSCPalette.green500,
              active: GDSCPalette.green600,
              pressed: GDSCPalette.green700,
              loading: GDSCPalette.green700,
              disabled: GDSCPalette.coolGray400),
          background: TabBarBackgroundColors(
              active: GDSCPalette.coolGray200.withOpacity(0.64),
              pressed: GDSCPalette.coolGray200.withOpacity(0.72))),
      secondary: TabBarColors(
          label: const TabBarLabelColors(
              common: GDSCPalette.green500,
              active: GDSCPalette.green600,
              pressed: GDSCPalette.green700,
              loading: GDSCPalette.green700,
              disabled: GDSCPalette.coolGray400),
          background: TabBarBackgroundColors(
              active: GDSCPalette.green300.withOpacity(0.64),
              pressed: GDSCPalette.green300.withOpacity(0.72))),
      tertiary: TabBarColors(
          label: const TabBarLabelColors(
              common: GDSCPalette.coolGray800,
              active: GDSCPalette.coolGray900,
              pressed: GDSCPalette.coolGray1000,
              loading: GDSCPalette.coolGray1000,
              disabled: GDSCPalette.coolGray400),
          background: TabBarBackgroundColors(
              active: GDSCPalette.coolGray200.withOpacity(0.64),
              pressed: GDSCPalette.coolGray200.withOpacity(0.72))));

  static var yellow = SemanticTabBarColors(
      primary: TabBarColors(
          label: TabBarLabelColors(
              common: GDSCPalette.yellow800,
              active: GDSCPalette.yellow900,
              pressed: GDSCPalette.yellow1000.withOpacity(0.84),
              loading: GDSCPalette.yellow1000.withOpacity(0.84),
              disabled: GDSCPalette.warmGray400),
          background: TabBarBackgroundColors(
              active: GDSCPalette.warmGray200.withOpacity(0.64),
              pressed: GDSCPalette.warmGray200.withOpacity(0.72))),
      secondary: TabBarColors(
          label: TabBarLabelColors(
              common: GDSCPalette.yellow800,
              active: GDSCPalette.yellow900,
              pressed: GDSCPalette.yellow1000.withOpacity(0.84),
              loading: GDSCPalette.yellow1000.withOpacity(0.84),
              disabled: GDSCPalette.warmGray400),
          background: TabBarBackgroundColors(
              active: GDSCPalette.yellow300.withOpacity(0.64),
              pressed: GDSCPalette.yellow300.withOpacity(0.72))),
      tertiary: TabBarColors(
          label: const TabBarLabelColors(
              common: GDSCPalette.warmGray800,
              active: GDSCPalette.warmGray900,
              pressed: GDSCPalette.warmGray1000,
              loading: GDSCPalette.warmGray1000,
              disabled: GDSCPalette.warmGray400),
          background: TabBarBackgroundColors(
              active: GDSCPalette.warmGray200.withOpacity(0.64),
              pressed: GDSCPalette.warmGray200.withOpacity(0.72))));

  static var red = SemanticTabBarColors(
      primary: TabBarColors(
          label: TabBarLabelColors(
              common: GDSCPalette.red600,
              active: GDSCPalette.red700.withOpacity(0.84),
              pressed: GDSCPalette.red700,
              loading: GDSCPalette.red1000,
              disabled: GDSCPalette.warmGray400),
          background: TabBarBackgroundColors(
              active: GDSCPalette.warmGray200.withOpacity(0.64),
              pressed: GDSCPalette.warmGray200.withOpacity(0.72))),
      secondary: TabBarColors(
          label: TabBarLabelColors(
              common: GDSCPalette.red500,
              active: GDSCPalette.red600,
              pressed: GDSCPalette.red700.withOpacity(0.84),
              loading: GDSCPalette.red700.withOpacity(0.84),
              disabled: GDSCPalette.warmGray400),
          background: TabBarBackgroundColors(
              active: GDSCPalette.red300.withOpacity(0.64),
              pressed: GDSCPalette.red300.withOpacity(0.72))),
      tertiary: TabBarColors(
          label: const TabBarLabelColors(
              common: GDSCPalette.warmGray800,
              active: GDSCPalette.warmGray900,
              pressed: GDSCPalette.warmGray1000,
              loading: GDSCPalette.warmGray1000,
              disabled: GDSCPalette.warmGray400),
          background: TabBarBackgroundColors(
              active: GDSCPalette.warmGray200.withOpacity(0.64),
              pressed: GDSCPalette.warmGray200.withOpacity(0.72))));
}
