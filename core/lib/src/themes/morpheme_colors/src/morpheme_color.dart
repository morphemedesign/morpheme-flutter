import 'package:flutter/material.dart';

extension MorphemeColorExtension on BuildContext {
  MorphemeColor get color => Theme.of(this).extension<MorphemeColor>()!;
}

class MorphemeColor extends ThemeExtension<MorphemeColor> {
  MorphemeColor({
    required this.primary,
    required this.white,
    required this.black,
    required this.grey,
    required this.grey1,
    required this.grey2,
    required this.grey3,
    required this.grey4,
    required this.secondary,
    required this.primaryLighter,
    required this.warning,
    required this.info,
    required this.success,
    required this.error,
    required this.bgError,
    required this.bgInfo,
    required this.bgSuccess,
    required this.bgWarning,
  });

  final MaterialColor primary;
  final Color white;
  final Color black;
  final Color grey;
  final Color grey1;
  final Color grey2;
  final Color grey3;
  final Color grey4;
  final Color secondary;
  final Color primaryLighter;
  final Color warning;
  final Color info;
  final Color success;
  final Color error;
  final Color bgError;
  final Color bgInfo;
  final Color bgSuccess;
  final Color bgWarning;

  @override
  MorphemeColor copyWith({
    MaterialColor? primary,
    Color? white,
    Color? black,
    Color? grey,
    Color? grey1,
    Color? grey2,
    Color? grey3,
    Color? grey4,
    Color? secondary,
    Color? primaryLighter,
    Color? warning,
    Color? info,
    Color? success,
    Color? error,
    Color? bgError,
    Color? bgInfo,
    Color? bgSuccess,
    Color? bgWarning,
  }) {
    return MorphemeColor(
      primary: primary ?? this.primary,
      white: white ?? this.white,
      black: black ?? this.black,
      grey: grey ?? this.grey,
      grey1: grey1 ?? this.grey1,
      grey2: grey2 ?? this.grey2,
      grey3: grey3 ?? this.grey3,
      grey4: grey4 ?? this.grey4,
      secondary: secondary ?? this.secondary,
      primaryLighter: primaryLighter ?? this.primaryLighter,
      warning: warning ?? this.warning,
      info: info ?? this.info,
      success: success ?? this.success,
      error: error ?? this.error,
      bgError: bgError ?? this.bgError,
      bgInfo: bgInfo ?? this.bgInfo,
      bgSuccess: bgSuccess ?? this.bgSuccess,
      bgWarning: bgWarning ?? this.bgWarning,
    );
  }

  @override
  MorphemeColor lerp(covariant MorphemeColor? other, double t) {
    if (other is! MorphemeColor) {
      return this;
    }

    return MorphemeColor(
      primary: other.primary,
      white: Color.lerp(white, other.white, t) ?? white,
      black: Color.lerp(black, other.black, t) ?? black,
      grey: Color.lerp(grey, other.grey, t) ?? grey,
      grey1: Color.lerp(grey1, other.grey1, t) ?? grey1,
      grey2: Color.lerp(grey2, other.grey2, t) ?? grey2,
      grey3: Color.lerp(grey3, other.grey3, t) ?? grey3,
      grey4: Color.lerp(grey4, other.grey4, t) ?? grey4,
      secondary: Color.lerp(secondary, other.secondary, t) ?? secondary,
      primaryLighter:
          Color.lerp(primaryLighter, other.primaryLighter, t) ?? primaryLighter,
      warning: Color.lerp(warning, other.warning, t) ?? warning,
      info: Color.lerp(info, other.info, t) ?? info,
      success: Color.lerp(success, other.success, t) ?? success,
      error: Color.lerp(error, other.error, t) ?? error,
      bgError: Color.lerp(bgError, other.bgError, t) ?? bgError,
      bgInfo: Color.lerp(bgInfo, other.bgInfo, t) ?? bgInfo,
      bgSuccess: Color.lerp(bgSuccess, other.bgSuccess, t) ?? bgSuccess,
      bgWarning: Color.lerp(bgWarning, other.bgWarning, t) ?? bgWarning,
    );
  }
}
