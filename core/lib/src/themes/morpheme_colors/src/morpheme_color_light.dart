import 'package:flutter/material.dart';

import 'morpheme_color.dart';

class MorphemeColorLight extends MorphemeColor {
  MorphemeColorLight()
      : super(
          primary: const MaterialColor(
            0xFF28A0F6,
            <int, Color>{
              900: Color(0xFF0F43A9),
              800: Color(0xFF145ABF),
              700: Color(0xFF1A73D5),
              600: Color(0xFF218CEB),
              500: Color(0xFF28A0F6),
              400: Color(0xFF6AC8FB),
              300: Color(0xFF86D2FC),
              200: Color(0xFFA9DEFD),
              100: Color(0xFFCBEAFD),
              50: Color(0xFFE2FEF7),
            },
          ),
          white: const Color(0xFFFFFFFF),
          black: const Color(0xFF1E1E1E),
          grey: const Color(0xFF979797),
          grey1: const Color(0xFFCFCFCF),
          grey2: const Color(0xFFE5E5E5),
          grey3: const Color(0xFFF5F5F5),
          grey4: const Color(0xFFF9F9F9),
          secondary: const Color(0xFFFDA06C),
          primaryLighter: const Color(0xFF00AFC1),
          warning: const Color(0xFFDAB320),
          info: const Color(0xFF00AFC1),
          success: const Color(0xFF22A82F),
          error: const Color(0xFFD66767),
          bgError: const Color(0xFFFFECEA),
          bgInfo: const Color(0xFFDFFCFF),
          bgSuccess: const Color(0xFFECFFEE),
          bgWarning: const Color(0xFFFFF9E3),
        );
}
