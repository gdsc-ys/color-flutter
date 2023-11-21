import 'dart:ui';

import 'package:gdsc_ys_color/gdsc_ys_color.dart';

class TextButtonBackgroundColors {
  final Color active;
  final Color pressed;

  const TextButtonBackgroundColors({
    required this.active,
    required this.pressed,
  });
}

class TextButtonLabelColors {
  final Color common;
  final Color active;
  final Color pressed;
  final Color loading;
  final Color disabled;

  const TextButtonLabelColors({
    required this.common,
    required this.active,
    required this.pressed,
    required this.loading,
    required this.disabled,
  });
}

class TextButtonColors {
  final TextButtonBackgroundColors background;
  final TextButtonLabelColors label;

  const TextButtonColors({
    required this.background,
    required this.label,
  });
}

class SemanticTextButtonColors {
  final TextButtonColors primary;
  final TextButtonColors secondary;
  final TextButtonColors tertiary;

  const SemanticTextButtonColors({
    required this.primary,
    required this.secondary,
    required this.tertiary,
  });
}

class GDSCTextButtonColors {
  static var blue = SemanticTextButtonColors(
    primary: TextButtonColors(
        background: TextButtonBackgroundColors(
            active: GDSCPalette.coolGray200.withOpacity(0.64),
            pressed: GDSCPalette.coolGray200.withOpacity(0.72)),
        label: const TextButtonLabelColors(
            common: GDSCPalette.blue500,
            active: GDSCPalette.blue600,
            pressed: GDSCPalette.blue700,
            loading: GDSCPalette.blue700,
            disabled: GDSCPalette.coolGray400)),
    secondary: TextButtonColors(
        background: TextButtonBackgroundColors(
          active: GDSCPalette.blue300.withOpacity(0.64),
          pressed: GDSCPalette.blue300.withOpacity(0.72),
        ),
        label: const TextButtonLabelColors(
            common: GDSCPalette.blue500,
            active: GDSCPalette.blue600,
            pressed: GDSCPalette.blue700,
            loading: GDSCPalette.blue700,
            disabled: GDSCPalette.coolGray400)),
    tertiary: TextButtonColors(
        background: TextButtonBackgroundColors(
          active: GDSCPalette.coolGray200.withOpacity(0.64),
          pressed: GDSCPalette.coolGray200.withOpacity(0.72),
        ),
        label: const TextButtonLabelColors(
            common: GDSCPalette.coolGray800,
            active: GDSCPalette.coolGray900,
            pressed: GDSCPalette.coolGray1000,
            loading: GDSCPalette.coolGray1000,
            disabled: GDSCPalette.coolGray400)),
  );

  static var green = SemanticTextButtonColors(
    primary: TextButtonColors(
        background: TextButtonBackgroundColors(
          active: GDSCPalette.coolGray200.withOpacity(0.64),
          pressed: GDSCPalette.coolGray200.withOpacity(0.72),
        ),
        label: const TextButtonLabelColors(
            common: GDSCPalette.green500,
            active: GDSCPalette.green600,
            pressed: GDSCPalette.green700,
            loading: GDSCPalette.green700,
            disabled: GDSCPalette.coolGray400)),
    secondary: TextButtonColors(
        background: TextButtonBackgroundColors(
          active: GDSCPalette.green300.withOpacity(0.64),
          pressed: GDSCPalette.green300.withOpacity(0.72),
        ),
        label: const TextButtonLabelColors(
            common: GDSCPalette.green500,
            active: GDSCPalette.green600,
            pressed: GDSCPalette.green700,
            loading: GDSCPalette.green700,
            disabled: GDSCPalette.coolGray400)),
    tertiary: TextButtonColors(
        background: TextButtonBackgroundColors(
          active: GDSCPalette.coolGray200.withOpacity(0.64),
          pressed: GDSCPalette.coolGray200.withOpacity(0.72),
        ),
        label: const TextButtonLabelColors(
            common: GDSCPalette.coolGray800,
            active: GDSCPalette.coolGray900,
            pressed: GDSCPalette.coolGray1000,
            loading: GDSCPalette.coolGray1000,
            disabled: GDSCPalette.coolGray400)),
  );

  static var yellow = SemanticTextButtonColors(
    primary: TextButtonColors(
        background: TextButtonBackgroundColors(
          active: GDSCPalette.warmGray200.withOpacity(0.64),
          pressed: GDSCPalette.warmGray200.withOpacity(0.64),
        ),
        label: const TextButtonLabelColors(
            common: GDSCPalette.yellow800,
            active: GDSCPalette.yellow900,
            pressed: GDSCPalette.yellow1000,
            loading: GDSCPalette.yellow1000,
            disabled: GDSCPalette.warmGray400)),
    secondary: TextButtonColors(
        background: TextButtonBackgroundColors(
          active: GDSCPalette.yellow300.withOpacity(0.64),
          pressed: GDSCPalette.yellow300.withOpacity(0.72),
        ),
        label: const TextButtonLabelColors(
            common: GDSCPalette.yellow800,
            active: GDSCPalette.yellow900,
            pressed: GDSCPalette.yellow1000,
            loading: GDSCPalette.yellow1000,
            disabled: GDSCPalette.warmGray400)),
    tertiary: TextButtonColors(
        background: TextButtonBackgroundColors(
          active: GDSCPalette.warmGray200.withOpacity(0.64),
          pressed: GDSCPalette.warmGray200.withOpacity(0.72),
        ),
        label: const TextButtonLabelColors(
            common: GDSCPalette.warmGray800,
            active: GDSCPalette.warmGray1000,
            pressed: GDSCPalette.warmGray1000,
            loading: GDSCPalette.warmGray1000,
            disabled: GDSCPalette.warmGray400)),
  );

  static var red = SemanticTextButtonColors(
    primary: TextButtonColors(
        background: TextButtonBackgroundColors(
          active: GDSCPalette.warmGray200.withOpacity(0.64),
          pressed: GDSCPalette.warmGray200.withOpacity(0.72),
        ),
        label: TextButtonLabelColors(
            common: GDSCPalette.red600,
            active: GDSCPalette.red700.withOpacity(0.84),
            pressed: GDSCPalette.red700,
            loading: GDSCPalette.red700,
            disabled: GDSCPalette.warmGray400)),
    secondary: TextButtonColors(
        background: TextButtonBackgroundColors(
          active: GDSCPalette.red300.withOpacity(0.64),
          pressed: GDSCPalette.red300.withOpacity(0.72),
        ),
        label: const TextButtonLabelColors(
            common: GDSCPalette.red500,
            active: GDSCPalette.red600,
            pressed: GDSCPalette.red700,
            loading: GDSCPalette.red700,
            disabled: GDSCPalette.warmGray400)),
    tertiary: TextButtonColors(
        background: TextButtonBackgroundColors(
          active: GDSCPalette.warmGray200.withOpacity(0.64),
          pressed: GDSCPalette.warmGray200.withOpacity(0.72),
        ),
        label: const TextButtonLabelColors(
            common: GDSCPalette.warmGray800,
            active: GDSCPalette.warmGray900,
            pressed: GDSCPalette.warmGray1000,
            loading: GDSCPalette.warmGray1000,
            disabled: GDSCPalette.warmGray400)),
  );
}
