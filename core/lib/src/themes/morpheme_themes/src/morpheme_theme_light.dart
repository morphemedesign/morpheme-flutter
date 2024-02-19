import 'package:core/src/themes/morpheme_colors/morpheme_colors.dart';
import 'package:flutter/material.dart';

import 'morpheme_theme.dart';

final class MorphemeThemeLight extends MorphemeTheme {
  MorphemeThemeLight() : super('light');

  @override
  MorphemeColor get color => MorphemeColorLight();

  @override
  ThemeData get rawThemeData => ThemeData.light();

  @override
  ColorScheme get colorScheme => ColorScheme.light(
        primary: color.primary,
        error: color.error,
      );
}
