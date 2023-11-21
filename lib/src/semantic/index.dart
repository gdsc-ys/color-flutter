import 'package:gdsc_ys_color/gdsc_ys_color.dart';

import 'background.dart';
import 'border.dart';
import 'button.dart';
import 'line.dart';
import 'tab_bar.dart';
import 'tag.dart';
import 'text_button.dart';

class SemanticColors {
  final SemanticBackgroundColors background;
  final SemanticBorderColors border;
  final SemanticButtonColors button;
  final SemanticLineColors line;
  final SemanticTabBarColors tabBar;
  final SemanticTagColors tag;
  final SemanticTextButtonColors textButton;

  const SemanticColors({
    required this.background,
    required this.border,
    required this.button,
    required this.line,
    required this.tabBar,
    required this.tag,
    required this.textButton,
  });
}

class GDSCSemanticColors {
  final GDSCColorTheme currentTheme;
  late SemanticColors currentColors;

  get colors => currentColors;

  static final SemanticColors blue = SemanticColors(
      background: GDSCBackgroundColors.blue,
      border: GDSCBorderColors.blue,
      button: GDSCButtonColors.blue,
      line: GDSCLineColors.blue,
      tabBar: GDSCTabBarColors.blue,
      tag: GDSCTagColors.blue,
      textButton: GDSCTextButtonColors.blue);

  static final SemanticColors green = SemanticColors(
      background: GDSCBackgroundColors.green,
      border: GDSCBorderColors.green,
      button: GDSCButtonColors.green,
      line: GDSCLineColors.green,
      tabBar: GDSCTabBarColors.green,
      tag: GDSCTagColors.green,
      textButton: GDSCTextButtonColors.green);

  static final SemanticColors yellow = SemanticColors(
      background: GDSCBackgroundColors.yellow,
      border: GDSCBorderColors.yellow,
      button: GDSCButtonColors.yellow,
      line: GDSCLineColors.yellow,
      tabBar: GDSCTabBarColors.yellow,
      tag: GDSCTagColors.yellow,
      textButton: GDSCTextButtonColors.yellow);

  static final SemanticColors red = SemanticColors(
      background: GDSCBackgroundColors.red,
      border: GDSCBorderColors.red,
      button: GDSCButtonColors.red,
      line: GDSCLineColors.red,
      tabBar: GDSCTabBarColors.red,
      tag: GDSCTagColors.red,
      textButton: GDSCTextButtonColors.red);

  GDSCSemanticColors({required this.currentTheme}) {
    switch(currentTheme) {
      case GDSCColorTheme.blue:
        currentColors = blue;
        break;
      case GDSCColorTheme.green:
        currentColors = green;
        break;
      case GDSCColorTheme.yellow:
        currentColors = yellow;
        break;
      case GDSCColorTheme.red:
        currentColors = red;
        break;
    }
  }
}
