import 'dart:ui';

import 'package:gdsc_ys_color/gdsc_ys_color.dart';

class ButtonBackgroundColors {
  final Color common;
  final Color active;
  final Color pressed;
  final Color loading;
  final Color disabled;

  const ButtonBackgroundColors({
    required this.common,
    required this.active,
    required this.pressed,
    required this.loading,
    required this.disabled,
  });
}

class ButtonLabelColors {
  final Color common;
  final Color active;
  final Color pressed;
  final Color loading;
  final Color disabled;

  const ButtonLabelColors({
    required this.common,
    required this.active,
    required this.pressed,
    required this.loading,
    required this.disabled,
  });
}

class ButtonColors {
  final ButtonBackgroundColors background;
  final ButtonLabelColors label;

  const ButtonColors({
    required this.background,
    required this.label,
  });
}

class SemanticButtonColors {
  final ButtonColors primary;
  final ButtonColors secondary;
  final ButtonColors tertiary;

  const SemanticButtonColors({
    required this.primary,
    required this.secondary,
    required this.tertiary,
  });
}

class GDSCButtonColors {
  static var blue = SemanticButtonColors(
    primary: const ButtonColors(
        background: ButtonBackgroundColors(
            common: GDSCPalette.blue500,
            active: GDSCPalette.blue600,
            pressed: GDSCPalette.blue700,
            loading: GDSCPalette.blue700,
            disabled: GDSCPalette.coolGray200),
        label: ButtonLabelColors(
            common: GDSCPalette.white,
            active: GDSCPalette.white,
            pressed: GDSCPalette.white,
            loading: GDSCPalette.white,
            disabled: GDSCPalette.coolGray400)),
    secondary: ButtonColors(
        background: ButtonBackgroundColors(
            common: GDSCPalette.blue300.withOpacity(0.84),
            active: GDSCPalette.blue400.withOpacity(0.90),
            pressed: GDSCPalette.blue400,
            loading: GDSCPalette.blue400,
            disabled: GDSCPalette.coolGray200),
        label: const ButtonLabelColors(
            common: GDSCPalette.blue900,
            active: GDSCPalette.blue900,
            pressed: GDSCPalette.blue900,
            loading: GDSCPalette.blue900,
            disabled: GDSCPalette.coolGray400)),
    tertiary: const ButtonColors(
        background: ButtonBackgroundColors(
            common: GDSCPalette.coolGray200,
            active: GDSCPalette.coolGray300,
            pressed: GDSCPalette.coolGray400,
            loading: GDSCPalette.coolGray400,
            disabled: GDSCPalette.coolGray200),
        label: ButtonLabelColors(
            common: GDSCPalette.coolGray700,
            active: GDSCPalette.coolGray700,
            pressed: GDSCPalette.coolGray700,
            loading: GDSCPalette.coolGray700,
            disabled: GDSCPalette.coolGray400)),
  );

  static var green = SemanticButtonColors(
    primary: const ButtonColors(
        background: ButtonBackgroundColors(
            common: GDSCPalette.green500,
            active: GDSCPalette.green600,
            pressed: GDSCPalette.green700,
            loading: GDSCPalette.green700,
            disabled: GDSCPalette.coolGray200),
        label: ButtonLabelColors(
            common: GDSCPalette.white,
            active: GDSCPalette.white,
            pressed: GDSCPalette.white,
            loading: GDSCPalette.white,
            disabled: GDSCPalette.coolGray400)),
    secondary: ButtonColors(
        background: ButtonBackgroundColors(
            common: GDSCPalette.green300.withOpacity(0.90),
            active: GDSCPalette.green400.withOpacity(0.85),
            pressed: GDSCPalette.green400,
            loading: GDSCPalette.green400,
            disabled: GDSCPalette.coolGray200),
        label: const ButtonLabelColors(
            common: GDSCPalette.green900,
            active: GDSCPalette.green900,
            pressed: GDSCPalette.green900,
            loading: GDSCPalette.green900,
            disabled: GDSCPalette.coolGray400)),
    tertiary: const ButtonColors(
        background: ButtonBackgroundColors(
            common: GDSCPalette.coolGray200,
            active: GDSCPalette.coolGray300,
            pressed: GDSCPalette.coolGray400,
            loading: GDSCPalette.coolGray400,
            disabled: GDSCPalette.coolGray200),
        label: ButtonLabelColors(
            common: GDSCPalette.coolGray700,
            active: GDSCPalette.coolGray700,
            pressed: GDSCPalette.coolGray700,
            loading: GDSCPalette.coolGray700,
            disabled: GDSCPalette.coolGray400)),
  );

  static var yellow = const SemanticButtonColors(
    primary: ButtonColors(
        background: ButtonBackgroundColors(
            common: GDSCPalette.yellow800,
            active: GDSCPalette.yellow900,
            pressed: GDSCPalette.yellow1000,
            loading: GDSCPalette.yellow1000,
            disabled: GDSCPalette.warmGray200),
        label: ButtonLabelColors(
            common: GDSCPalette.white,
            active: GDSCPalette.white,
            pressed: GDSCPalette.white,
            loading: GDSCPalette.white,
            disabled: GDSCPalette.warmGray400)),
    secondary: ButtonColors(
        background: ButtonBackgroundColors(
            common: GDSCPalette.yellow300,
            active: GDSCPalette.yellow400,
            pressed: GDSCPalette.yellow500,
            loading: GDSCPalette.yellow500,
            disabled: GDSCPalette.warmGray200),
        label: ButtonLabelColors(
            common: GDSCPalette.yellow1000,
            active: GDSCPalette.yellow1000,
            pressed: GDSCPalette.yellow1000,
            loading: GDSCPalette.yellow1000,
            disabled: GDSCPalette.warmGray400)),
    tertiary: ButtonColors(
        background: ButtonBackgroundColors(
            common: GDSCPalette.warmGray200,
            active: GDSCPalette.warmGray300,
            pressed: GDSCPalette.warmGray400,
            loading: GDSCPalette.warmGray400,
            disabled: GDSCPalette.warmGray200),
        label: ButtonLabelColors(
            common: GDSCPalette.warmGray700,
            active: GDSCPalette.warmGray700,
            pressed: GDSCPalette.warmGray700,
            loading: GDSCPalette.warmGray700,
            disabled: GDSCPalette.warmGray400)),
  );

  static var red = const SemanticButtonColors(
    primary: ButtonColors(
        background: ButtonBackgroundColors(
            common: GDSCPalette.red600,
            active: GDSCPalette.red700,
            pressed: GDSCPalette.red800,
            loading: GDSCPalette.red800,
            disabled: GDSCPalette.warmGray200),
        label: ButtonLabelColors(
            common: GDSCPalette.white,
            active: GDSCPalette.white,
            pressed: GDSCPalette.white,
            loading: GDSCPalette.white,
            disabled: GDSCPalette.warmGray400)),
    secondary: ButtonColors(
        background: ButtonBackgroundColors(
            common: GDSCPalette.red300,
            active: GDSCPalette.red400,
            pressed: GDSCPalette.red500,
            loading: GDSCPalette.red500,
            disabled: GDSCPalette.warmGray200),
        label: ButtonLabelColors(
            common: GDSCPalette.red900,
            active: GDSCPalette.red1000,
            pressed: GDSCPalette.red1000,
            loading: GDSCPalette.red1000,
            disabled: GDSCPalette.warmGray400)),
    tertiary: ButtonColors(
        background: ButtonBackgroundColors(
            common: GDSCPalette.warmGray200,
            active: GDSCPalette.warmGray300,
            pressed: GDSCPalette.warmGray400,
            loading: GDSCPalette.warmGray400,
            disabled: GDSCPalette.warmGray200),
        label: ButtonLabelColors(
            common: GDSCPalette.warmGray700,
            active: GDSCPalette.warmGray800,
            pressed: GDSCPalette.warmGray800,
            loading: GDSCPalette.warmGray800,
            disabled: GDSCPalette.warmGray400)),
  );
}
