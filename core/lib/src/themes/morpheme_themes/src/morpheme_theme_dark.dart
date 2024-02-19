import 'package:core/src/themes/morpheme_colors/morpheme_colors.dart';
import 'package:flutter/material.dart';

import 'morpheme_theme.dart';

final class MorphemeThemeDark extends MorphemeTheme {
  MorphemeThemeDark() : super('dark');

  @override
  MorphemeColor get color => MorphemeColorDark();

  @override
  ThemeData get rawThemeData => ThemeData.dark();

  @override
  ColorScheme get colorScheme => ColorScheme.dark(
        primary: color.primary,
        error: color.error,
      );
}
