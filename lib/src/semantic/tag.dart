import 'dart:ui';

import 'package:gdsc_ys_color/gdsc_ys_color.dart';

class _TagBackgroundTheme {
  final Color common;
  final Color disabled;

  const _TagBackgroundTheme({
    required this.common,
    required this.disabled,
  });
}

class _TagLabelTheme {
  final Color common;
  final Color disabled;

  const _TagLabelTheme({
    required this.common,
    required this.disabled,
  });
}

class _TagTheme {
  final _TagBackgroundTheme background;
  final _TagLabelTheme label;

  const _TagTheme({
    required this.background,
    required this.label,
  });
}

class _SemanticTagTheme {
  final _TagTheme primary;
  final _TagTheme secondary;
  final _TagTheme tertiary;

  const _SemanticTagTheme({
    required this.primary,
    required this.secondary,
    required this.tertiary,
  });
}

class GDSCTagTheme {
  static const blue = _SemanticTagTheme(
      primary: _TagTheme(
          background: _TagBackgroundTheme(
              common: GDSCPalette.blue500, disabled: GDSCPalette.coolGray200),
          label: _TagLabelTheme(
              common: GDSCPalette.white, disabled: GDSCPalette.coolGray400)),
      secondary: _TagTheme(
          background: _TagBackgroundTheme(
              common: GDSCPalette.blue300, disabled: GDSCPalette.coolGray200),
          label: _TagLabelTheme(
              common: GDSCPalette.blue900, disabled: GDSCPalette.coolGray400)),
      tertiary: _TagTheme(
          background: _TagBackgroundTheme(
              common: GDSCPalette.coolGray200,
              disabled: GDSCPalette.coolGray200),
          label: _TagLabelTheme(
              common: GDSCPalette.coolGray700,
              disabled: GDSCPalette.coolGray400)));

  static const green = _SemanticTagTheme(
      primary: _TagTheme(
          background: _TagBackgroundTheme(
              common: GDSCPalette.green500, disabled: GDSCPalette.coolGray200),
          label: _TagLabelTheme(
              common: GDSCPalette.white, disabled: GDSCPalette.coolGray400)),
      secondary: _TagTheme(
          background: _TagBackgroundTheme(
              common: GDSCPalette.green300, disabled: GDSCPalette.coolGray200),
          label: _TagLabelTheme(
              common: GDSCPalette.green900, disabled: GDSCPalette.coolGray400)),
      tertiary: _TagTheme(
          background: _TagBackgroundTheme(
              common: GDSCPalette.coolGray200,
              disabled: GDSCPalette.coolGray200),
          label: _TagLabelTheme(
              common: GDSCPalette.coolGray700,
              disabled: GDSCPalette.coolGray400)));

  static const yellow = _SemanticTagTheme(
      primary: _TagTheme(
          background: _TagBackgroundTheme(
              common: GDSCPalette.yellow800, disabled: GDSCPalette.warmGray200),
          label: _TagLabelTheme(
              common: GDSCPalette.white, disabled: GDSCPalette.warmGray400)),
      secondary: _TagTheme(
          background: _TagBackgroundTheme(
              common: GDSCPalette.yellow300, disabled: GDSCPalette.warmGray200),
          label: _TagLabelTheme(
              common: GDSCPalette.yellow1000,
              disabled: GDSCPalette.warmGray400)),
      tertiary: _TagTheme(
          background: _TagBackgroundTheme(
              common: GDSCPalette.warmGray200,
              disabled: GDSCPalette.warmGray200),
          label: _TagLabelTheme(
              common: GDSCPalette.warmGray700,
              disabled: GDSCPalette.warmGray400)));

  static const red = _SemanticTagTheme(
      primary: _TagTheme(
          background: _TagBackgroundTheme(
              common: GDSCPalette.red600, disabled: GDSCPalette.warmGray200),
          label: _TagLabelTheme(
              common: GDSCPalette.white, disabled: GDSCPalette.warmGray400)),
      secondary: _TagTheme(
          background: _TagBackgroundTheme(
              common: GDSCPalette.red300, disabled: GDSCPalette.warmGray200),
          label: _TagLabelTheme(
              common: GDSCPalette.red900, disabled: GDSCPalette.warmGray400)),
      tertiary: _TagTheme(
          background: _TagBackgroundTheme(
              common: GDSCPalette.warmGray200,
              disabled: GDSCPalette.warmGray200),
          label: _TagLabelTheme(
              common: GDSCPalette.warmGray700,
              disabled: GDSCPalette.warmGray400)));
}
