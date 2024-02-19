import 'package:core/src/component/component.dart';
import 'package:core/src/constants/constants.dart';
import 'package:core/src/themes/morpheme_colors/morpheme_colors.dart';
import 'package:dependency_manager/dependency_manager.dart';
import 'package:flutter/material.dart';

abstract base class MorphemeTheme {
  MorphemeTheme(this.id);

  final String id;

  MorphemeColor get color;
  ThemeData get rawThemeData;
  ColorScheme get colorScheme;

  TextTheme get _getTextTheme => GoogleFonts.robotoTextTheme()
      .apply(bodyColor: color.black, displayColor: color.black)
      .merge(MorphemeTextTheme.textTheme);

  ThemeData get themeData => rawThemeData.copyWith(
        scaffoldBackgroundColor: color.white,
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: color.white,
          foregroundColor: color.black,
          titleTextStyle: _getTextTheme.titleLarge,
        ),
        colorScheme: colorScheme,
        textTheme: _getTextTheme,
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: _getTextTheme.bodyMedium?.apply(color: color.grey1),
          fillColor: color.white,
          filled: true,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: MorphemeSizes.s16,
            vertical: MorphemeSizes.s8,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: color.grey1, width: 1),
            borderRadius: BorderRadius.circular(MorphemeSizes.s8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: color.grey1, width: 1),
            borderRadius: BorderRadius.circular(MorphemeSizes.s8),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: color.grey1, width: 1),
            borderRadius: BorderRadius.circular(MorphemeSizes.s8),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: color.error, width: 1),
            borderRadius: BorderRadius.circular(MorphemeSizes.s8),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: color.grey1, width: 1),
            borderRadius: BorderRadius.circular(MorphemeSizes.s8),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: _getTextTheme.labelLarge,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(MorphemeSizes.s8)),
            ),
            padding: const EdgeInsets.symmetric(horizontal: MorphemeSizes.s16),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            textStyle: _getTextTheme.labelLarge,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(MorphemeSizes.s8)),
            ),
            padding: const EdgeInsets.symmetric(horizontal: MorphemeSizes.s16),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: _getTextTheme.labelLarge,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(MorphemeSizes.s8)),
            ),
            padding: const EdgeInsets.symmetric(horizontal: MorphemeSizes.s16),
          ),
        ),
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MorphemeTheme && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}
