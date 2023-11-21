import 'dart:ui';

import 'package:gdsc_ys_color/gdsc_ys_color.dart';

class _TabBarLabelTheme {
  final Color common;
  final Color active;
  final Color pressed;
  final Color loading;
  final Color disabled;

  const _TabBarLabelTheme({
    required this.common,
    required this.active,
    required this.pressed,
    required this.loading,
    required this.disabled,
  });
}

class _TabBarBackgroundTheme {
  final Color active;
  final Color pressed;

  const _TabBarBackgroundTheme({
    required this.active,
    required this.pressed,
  });
}

class _TabBarTheme {
  final _TabBarLabelTheme label;
  final _TabBarBackgroundTheme background;

  const _TabBarTheme({
    required this.label,
    required this.background,
  });
}

class _SemanticTabBarTheme {
  final _TabBarTheme primary;
  final _TabBarTheme secondary;
  final _TabBarTheme tertiary;

  const _SemanticTabBarTheme({
    required this.primary,
    required this.secondary,
    required this.tertiary,
  });
}

class GDSCTabBarTheme {
  static var blue = _SemanticTabBarTheme(
      primary: _TabBarTheme(
          label: const _TabBarLabelTheme(
              common: GDSCPalette.blue500,
              active: GDSCPalette.blue600,
              pressed: GDSCPalette.blue700,
              loading: GDSCPalette.blue700,
              disabled: GDSCPalette.coolGray400),
          background: _TabBarBackgroundTheme(
              active: GDSCPalette.coolGray200.withOpacity(0.64),
              pressed: GDSCPalette.coolGray200.withOpacity(0.72))),
      secondary: _TabBarTheme(
          label: const _TabBarLabelTheme(
              common: GDSCPalette.blue500,
              active: GDSCPalette.blue600,
              pressed: GDSCPalette.blue700,
              loading: GDSCPalette.blue700,
              disabled: GDSCPalette.coolGray400),
          background: _TabBarBackgroundTheme(
              active: GDSCPalette.blue300.withOpacity(0.64),
              pressed: GDSCPalette.blue300.withOpacity(0.72))),
      tertiary: _TabBarTheme(
          label: const _TabBarLabelTheme(
              common: GDSCPalette.coolGray800,
              active: GDSCPalette.coolGray900,
              pressed: GDSCPalette.coolGray1000,
              loading: GDSCPalette.coolGray1000,
              disabled: GDSCPalette.coolGray400),
          background: _TabBarBackgroundTheme(
              active: GDSCPalette.coolGray200.withOpacity(0.64),
              pressed: GDSCPalette.coolGray200.withOpacity(0.72))));

  static var green = _SemanticTabBarTheme(
      primary: _TabBarTheme(
          label: const _TabBarLabelTheme(
              common: GDSCPalette.green500,
              active: GDSCPalette.green600,
              pressed: GDSCPalette.green700,
              loading: GDSCPalette.green700,
              disabled: GDSCPalette.coolGray400),
          background: _TabBarBackgroundTheme(
              active: GDSCPalette.coolGray200.withOpacity(0.64),
              pressed: GDSCPalette.coolGray200.withOpacity(0.72))),
      secondary: _TabBarTheme(
          label: const _TabBarLabelTheme(
              common: GDSCPalette.green500,
              active: GDSCPalette.green600,
              pressed: GDSCPalette.green700,
              loading: GDSCPalette.green700,
              disabled: GDSCPalette.coolGray400),
          background: _TabBarBackgroundTheme(
              active: GDSCPalette.green300.withOpacity(0.64),
              pressed: GDSCPalette.green300.withOpacity(0.72))),
      tertiary: _TabBarTheme(
          label: const _TabBarLabelTheme(
              common: GDSCPalette.coolGray800,
              active: GDSCPalette.coolGray900,
              pressed: GDSCPalette.coolGray1000,
              loading: GDSCPalette.coolGray1000,
              disabled: GDSCPalette.coolGray400),
          background: _TabBarBackgroundTheme(
              active: GDSCPalette.coolGray200.withOpacity(0.64),
              pressed: GDSCPalette.coolGray200.withOpacity(0.72))));

  static var yellow = _SemanticTabBarTheme(
      primary: _TabBarTheme(
          label: _TabBarLabelTheme(
              common: GDSCPalette.yellow800,
              active: GDSCPalette.yellow900,
              pressed: GDSCPalette.yellow1000.withOpacity(0.84),
              loading: GDSCPalette.yellow1000.withOpacity(0.84),
              disabled: GDSCPalette.warmGray400),
          background: _TabBarBackgroundTheme(
              active: GDSCPalette.warmGray200.withOpacity(0.64),
              pressed: GDSCPalette.warmGray200.withOpacity(0.72))),
      secondary: _TabBarTheme(
          label: _TabBarLabelTheme(
              common: GDSCPalette.yellow800,
              active: GDSCPalette.yellow900,
              pressed: GDSCPalette.yellow1000.withOpacity(0.84),
              loading: GDSCPalette.yellow1000.withOpacity(0.84),
              disabled: GDSCPalette.warmGray400),
          background: _TabBarBackgroundTheme(
              active: GDSCPalette.yellow300.withOpacity(0.64),
              pressed: GDSCPalette.yellow300.withOpacity(0.72))),
      tertiary: _TabBarTheme(
          label: const _TabBarLabelTheme(
              common: GDSCPalette.warmGray800,
              active: GDSCPalette.warmGray900,
              pressed: GDSCPalette.warmGray1000,
              loading: GDSCPalette.warmGray1000,
              disabled: GDSCPalette.warmGray400),
          background: _TabBarBackgroundTheme(
              active: GDSCPalette.warmGray200.withOpacity(0.64),
              pressed: GDSCPalette.warmGray200.withOpacity(0.72))));

  static var red = _SemanticTabBarTheme(
      primary: _TabBarTheme(
          label: _TabBarLabelTheme(
              common: GDSCPalette.red600,
              active: GDSCPalette.red700.withOpacity(0.84),
              pressed: GDSCPalette.red700,
              loading: GDSCPalette.red1000,
              disabled: GDSCPalette.warmGray400),
          background: _TabBarBackgroundTheme(
              active: GDSCPalette.warmGray200.withOpacity(0.64),
              pressed: GDSCPalette.warmGray200.withOpacity(0.72))),
      secondary: _TabBarTheme(
          label: _TabBarLabelTheme(
              common: GDSCPalette.red500,
              active: GDSCPalette.red600,
              pressed: GDSCPalette.red700.withOpacity(0.84),
              loading: GDSCPalette.red700.withOpacity(0.84),
              disabled: GDSCPalette.warmGray400),
          background: _TabBarBackgroundTheme(
              active: GDSCPalette.red300.withOpacity(0.64),
              pressed: GDSCPalette.red300.withOpacity(0.72))),
      tertiary: _TabBarTheme(
          label: const _TabBarLabelTheme(
              common: GDSCPalette.warmGray800,
              active: GDSCPalette.warmGray900,
              pressed: GDSCPalette.warmGray1000,
              loading: GDSCPalette.warmGray1000,
              disabled: GDSCPalette.warmGray400),
          background: _TabBarBackgroundTheme(
              active: GDSCPalette.warmGray200.withOpacity(0.64),
              pressed: GDSCPalette.warmGray200.withOpacity(0.72))));
}
