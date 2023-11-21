import 'dart:ui';

import 'package:gdsc_ys_color/gdsc_ys_color.dart';

class TagBackgroundColors {
  final Color common;
  final Color disabled;

  const TagBackgroundColors({
    required this.common,
    required this.disabled,
  });
}

class TagLabelColors {
  final Color common;
  final Color disabled;

  const TagLabelColors({
    required this.common,
    required this.disabled,
  });
}

class TagColors {
  final TagBackgroundColors background;
  final TagLabelColors label;

  const TagColors({
    required this.background,
    required this.label,
  });
}

class SemanticTagColors {
  final TagColors primary;
  final TagColors secondary;
  final TagColors tertiary;

  const SemanticTagColors({
    required this.primary,
    required this.secondary,
    required this.tertiary,
  });
}

class GDSCTagColors {
  static const blue = SemanticTagColors(
      primary: TagColors(
          background: TagBackgroundColors(
              common: GDSCPalette.blue500, disabled: GDSCPalette.coolGray200),
          label: TagLabelColors(
              common: GDSCPalette.white, disabled: GDSCPalette.coolGray400)),
      secondary: TagColors(
          background: TagBackgroundColors(
              common: GDSCPalette.blue300, disabled: GDSCPalette.coolGray200),
          label: TagLabelColors(
              common: GDSCPalette.blue900, disabled: GDSCPalette.coolGray400)),
      tertiary: TagColors(
          background: TagBackgroundColors(
              common: GDSCPalette.coolGray200,
              disabled: GDSCPalette.coolGray200),
          label: TagLabelColors(
              common: GDSCPalette.coolGray700,
              disabled: GDSCPalette.coolGray400)));

  static const green = SemanticTagColors(
      primary: TagColors(
          background: TagBackgroundColors(
              common: GDSCPalette.green500, disabled: GDSCPalette.coolGray200),
          label: TagLabelColors(
              common: GDSCPalette.white, disabled: GDSCPalette.coolGray400)),
      secondary: TagColors(
          background: TagBackgroundColors(
              common: GDSCPalette.green300, disabled: GDSCPalette.coolGray200),
          label: TagLabelColors(
              common: GDSCPalette.green900, disabled: GDSCPalette.coolGray400)),
      tertiary: TagColors(
          background: TagBackgroundColors(
              common: GDSCPalette.coolGray200,
              disabled: GDSCPalette.coolGray200),
          label: TagLabelColors(
              common: GDSCPalette.coolGray700,
              disabled: GDSCPalette.coolGray400)));

  static const yellow = SemanticTagColors(
      primary: TagColors(
          background: TagBackgroundColors(
              common: GDSCPalette.yellow800, disabled: GDSCPalette.warmGray200),
          label: TagLabelColors(
              common: GDSCPalette.white, disabled: GDSCPalette.warmGray400)),
      secondary: TagColors(
          background: TagBackgroundColors(
              common: GDSCPalette.yellow300, disabled: GDSCPalette.warmGray200),
          label: TagLabelColors(
              common: GDSCPalette.yellow1000,
              disabled: GDSCPalette.warmGray400)),
      tertiary: TagColors(
          background: TagBackgroundColors(
              common: GDSCPalette.warmGray200,
              disabled: GDSCPalette.warmGray200),
          label: TagLabelColors(
              common: GDSCPalette.warmGray700,
              disabled: GDSCPalette.warmGray400)));

  static const red = SemanticTagColors(
      primary: TagColors(
          background: TagBackgroundColors(
              common: GDSCPalette.red600, disabled: GDSCPalette.warmGray200),
          label: TagLabelColors(
              common: GDSCPalette.white, disabled: GDSCPalette.warmGray400)),
      secondary: TagColors(
          background: TagBackgroundColors(
              common: GDSCPalette.red300, disabled: GDSCPalette.warmGray200),
          label: TagLabelColors(
              common: GDSCPalette.red900, disabled: GDSCPalette.warmGray400)),
      tertiary: TagColors(
          background: TagBackgroundColors(
              common: GDSCPalette.warmGray200,
              disabled: GDSCPalette.warmGray200),
          label: TagLabelColors(
              common: GDSCPalette.warmGray700,
              disabled: GDSCPalette.warmGray400)));
}
