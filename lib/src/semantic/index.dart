import 'package:gdsc_ys_color/gdsc_ys_color.dart';

import 'background.dart';
import 'border.dart';
import 'button.dart';
import 'line.dart';
import 'tab_bar.dart';
import 'tag.dart';
import 'text_button.dart';

class GDSCSemanticColor {
  final GDSCColorTheme currentTheme;

  const GDSCSemanticColor({required this.currentTheme});

  get background {
    switch (currentTheme) {
      case GDSCColorTheme.blue:
        return GDSCBackgroundTheme.blue;
      case GDSCColorTheme.green:
        return GDSCBackgroundTheme.green;
      case GDSCColorTheme.yellow:
        return GDSCBackgroundTheme.yellow;
      case GDSCColorTheme.red:
        return GDSCBackgroundTheme.red;
    }
  }

  get border {
    switch (currentTheme) {
      case GDSCColorTheme.blue:
        return GDSCBorderTheme.blue;
      case GDSCColorTheme.green:
        return GDSCBorderTheme.green;
      case GDSCColorTheme.yellow:
        return GDSCBorderTheme.yellow;
      case GDSCColorTheme.red:
        return GDSCBorderTheme.red;
    }
  }

  get button {
    switch (currentTheme) {
      case GDSCColorTheme.blue:
        return GDSCButtonTheme.blue;
      case GDSCColorTheme.green:
        return GDSCButtonTheme.green;
      case GDSCColorTheme.yellow:
        return GDSCButtonTheme.yellow;
      case GDSCColorTheme.red:
        return GDSCButtonTheme.red;
    }
  }

  get line {
    switch (currentTheme) {
      case GDSCColorTheme.blue:
        return GDSCLineTheme.blue;
      case GDSCColorTheme.green:
        return GDSCLineTheme.green;
      case GDSCColorTheme.yellow:
        return GDSCLineTheme.yellow;
      case GDSCColorTheme.red:
        return GDSCLineTheme.red;
    }
  }

  get tabBar {
    switch (currentTheme) {
      case GDSCColorTheme.blue:
        return GDSCTabBarTheme.blue;
      case GDSCColorTheme.green:
        return GDSCTabBarTheme.green;
      case GDSCColorTheme.yellow:
        return GDSCTabBarTheme.yellow;
      case GDSCColorTheme.red:
        return GDSCTabBarTheme.red;
    }
  }

  get tag {
    switch (currentTheme) {
      case GDSCColorTheme.blue:
        return GDSCTagTheme.blue;
      case GDSCColorTheme.green:
        return GDSCTagTheme.green;
      case GDSCColorTheme.yellow:
        return GDSCTagTheme.yellow;
      case GDSCColorTheme.red:
        return GDSCTagTheme.red;
    }
  }

  get textButton {
    switch (currentTheme) {
      case GDSCColorTheme.blue:
        return GDSCTextButtonTheme.blue;
      case GDSCColorTheme.green:
        return GDSCTextButtonTheme.green;
      case GDSCColorTheme.yellow:
        return GDSCTextButtonTheme.yellow;
      case GDSCColorTheme.red:
        return GDSCTextButtonTheme.red;
    }
  }
}
