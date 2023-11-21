import 'dart:ui';

import 'package:gdsc_ys_color/gdsc_ys_color.dart';

class _TextButtonBackgroundTheme {
  final Color active;
  final Color pressed;

  const _TextButtonBackgroundTheme({
    required this.active,
    required this.pressed,
  });
}

class _TextButtonLabelTheme {
  final Color common;
  final Color active;
  final Color pressed;
  final Color loading;
  final Color disabled;

  const _TextButtonLabelTheme({
    required this.common,
    required this.active,
    required this.pressed,
    required this.loading,
    required this.disabled,
  });
}

class _TextButtonTheme {
  final _TextButtonBackgroundTheme background;
  final _TextButtonLabelTheme label;

  const _TextButtonTheme({
    required this.background,
    required this.label,
  });
}

class _SemanticTextButtonTheme {
  final _TextButtonTheme primary;
  final _TextButtonTheme secondary;
  final _TextButtonTheme tertiary;

  const _SemanticTextButtonTheme({
    required this.primary,
    required this.secondary,
    required this.tertiary,
  });
}

class GDSCTextButtonTheme {
  static var blue = _SemanticTextButtonTheme(
    primary: _TextButtonTheme(
        background: _TextButtonBackgroundTheme(
            active: GDSCPalette.coolGray200.withOpacity(0.64),
            pressed: GDSCPalette.coolGray200.withOpacity(0.72)),
        label: const _TextButtonLabelTheme(
            common: GDSCPalette.blue500,
            active: GDSCPalette.blue600,
            pressed: GDSCPalette.blue700,
            loading: GDSCPalette.blue700,
            disabled: GDSCPalette.coolGray400)),
    secondary: _TextButtonTheme(
        background: _TextButtonBackgroundTheme(
          active: GDSCPalette.blue300.withOpacity(0.64),
          pressed: GDSCPalette.blue300.withOpacity(0.72),
        ),
        label: const _TextButtonLabelTheme(
            common: GDSCPalette.blue500,
            active: GDSCPalette.blue600,
            pressed: GDSCPalette.blue700,
            loading: GDSCPalette.blue700,
            disabled: GDSCPalette.coolGray400)),
    tertiary: _TextButtonTheme(
        background: _TextButtonBackgroundTheme(
          active: GDSCPalette.coolGray200.withOpacity(0.64),
          pressed: GDSCPalette.coolGray200.withOpacity(0.72),
        ),
        label: const _TextButtonLabelTheme(
            common: GDSCPalette.coolGray800,
            active: GDSCPalette.coolGray900,
            pressed: GDSCPalette.coolGray1000,
            loading: GDSCPalette.coolGray1000,
            disabled: GDSCPalette.coolGray400)),
  );

  static var green = _SemanticTextButtonTheme(
    primary: _TextButtonTheme(
        background: _TextButtonBackgroundTheme(
          active: GDSCPalette.coolGray200.withOpacity(0.64),
          pressed: GDSCPalette.coolGray200.withOpacity(0.72),
        ),
        label: const _TextButtonLabelTheme(
            common: GDSCPalette.green500,
            active: GDSCPalette.green600,
            pressed: GDSCPalette.green700,
            loading: GDSCPalette.green700,
            disabled: GDSCPalette.coolGray400)),
    secondary: _TextButtonTheme(
        background: _TextButtonBackgroundTheme(
          active: GDSCPalette.green300.withOpacity(0.64),
          pressed: GDSCPalette.green300.withOpacity(0.72),
        ),
        label: const _TextButtonLabelTheme(
            common: GDSCPalette.green500,
            active: GDSCPalette.green600,
            pressed: GDSCPalette.green700,
            loading: GDSCPalette.green700,
            disabled: GDSCPalette.coolGray400)),
    tertiary: _TextButtonTheme(
        background: _TextButtonBackgroundTheme(
          active: GDSCPalette.coolGray200.withOpacity(0.64),
          pressed: GDSCPalette.coolGray200.withOpacity(0.72),
        ),
        label: const _TextButtonLabelTheme(
            common: GDSCPalette.coolGray800,
            active: GDSCPalette.coolGray900,
            pressed: GDSCPalette.coolGray1000,
            loading: GDSCPalette.coolGray1000,
            disabled: GDSCPalette.coolGray400)),
  );

  static var yellow = _SemanticTextButtonTheme(
    primary: _TextButtonTheme(
        background: _TextButtonBackgroundTheme(
          active: GDSCPalette.warmGray200.withOpacity(0.64),
          pressed: GDSCPalette.warmGray200.withOpacity(0.64),
        ),
        label: const _TextButtonLabelTheme(
            common: GDSCPalette.yellow800,
            active: GDSCPalette.yellow900,
            pressed: GDSCPalette.yellow1000,
            loading: GDSCPalette.yellow1000,
            disabled: GDSCPalette.warmGray400)),
    secondary: _TextButtonTheme(
        background: _TextButtonBackgroundTheme(
          active: GDSCPalette.yellow300.withOpacity(0.64),
          pressed: GDSCPalette.yellow300.withOpacity(0.72),
        ),
        label: const _TextButtonLabelTheme(
            common: GDSCPalette.yellow800,
            active: GDSCPalette.yellow900,
            pressed: GDSCPalette.yellow1000,
            loading: GDSCPalette.yellow1000,
            disabled: GDSCPalette.warmGray400)),
    tertiary: _TextButtonTheme(
        background: _TextButtonBackgroundTheme(
          active: GDSCPalette.warmGray200.withOpacity(0.64),
          pressed: GDSCPalette.warmGray200.withOpacity(0.72),
        ),
        label: const _TextButtonLabelTheme(
            common: GDSCPalette.warmGray800,
            active: GDSCPalette.warmGray1000,
            pressed: GDSCPalette.warmGray1000,
            loading: GDSCPalette.warmGray1000,
            disabled: GDSCPalette.warmGray400)),
  );

  static var red = _SemanticTextButtonTheme(
    primary: _TextButtonTheme(
        background: _TextButtonBackgroundTheme(
          active: GDSCPalette.warmGray200.withOpacity(0.64),
          pressed: GDSCPalette.warmGray200.withOpacity(0.72),
        ),
        label: _TextButtonLabelTheme(
            common: GDSCPalette.red600,
            active: GDSCPalette.red700.withOpacity(0.84),
            pressed: GDSCPalette.red700,
            loading: GDSCPalette.red700,
            disabled: GDSCPalette.warmGray400)),
    secondary: _TextButtonTheme(
        background: _TextButtonBackgroundTheme(
          active: GDSCPalette.red300.withOpacity(0.64),
          pressed: GDSCPalette.red300.withOpacity(0.72),
        ),
        label: const _TextButtonLabelTheme(
            common: GDSCPalette.red500,
            active: GDSCPalette.red600,
            pressed: GDSCPalette.red700,
            loading: GDSCPalette.red700,
            disabled: GDSCPalette.warmGray400)),
    tertiary: _TextButtonTheme(
        background: _TextButtonBackgroundTheme(
          active: GDSCPalette.warmGray200.withOpacity(0.64),
          pressed: GDSCPalette.warmGray200.withOpacity(0.72),
        ),
        label: const _TextButtonLabelTheme(
            common: GDSCPalette.warmGray800,
            active: GDSCPalette.warmGray900,
            pressed: GDSCPalette.warmGray1000,
            loading: GDSCPalette.warmGray1000,
            disabled: GDSCPalette.warmGray400)),
  );
}
