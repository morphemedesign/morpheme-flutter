import 'package:flutter/material.dart' show Color;

import 'morpheme_color.dart';

final class MorphemeColorDark extends MorphemeColor {
  static final MorphemeColorDark _instance = MorphemeColorDark._();

  factory MorphemeColorDark() {
    return _instance;
  }

  MorphemeColorDark._();

  @override
  Color get white => const Color(0xFF1E1E1E);
  @override
  Color get black => const Color(0xFFFFFFFF);
  @override
  Color get grey => const Color(0xFF979797);
  @override
  Color get grey1 => const Color(0xFFF9F9F9);
  @override
  Color get grey2 => const Color(0xFFF5F5F5);
  @override
  Color get grey3 => const Color(0xFFE5E5E5);
  @override
  Color get grey4 => const Color(0xFFCFCFCF);
  @override
  Color get primary => const Color(0xFF28A0F6);
  @override
  Color get secondary => const Color(0xFFFDA06C);
  @override
  Color get primaryLighter => const Color(0xFF00AFC1);
  @override
  Color get warning => const Color(0xFFDAB320);
  @override
  Color get info => const Color(0xFF00AFC1);
  @override
  Color get success => const Color(0xFF22A82F);
  @override
  Color get error => const Color(0xFFD66767);
  @override
  Color get bgError => const Color(0xFFFFECEA);
  @override
  Color get bgInfo => const Color(0xFFDFFCFF);
  @override
  Color get bgSuccess => const Color(0xFFECFFEE);
  @override
  Color get bgWarning => const Color(0xFFFFF9E3);
}
