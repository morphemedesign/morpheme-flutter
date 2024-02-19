import 'package:core/src/shared/global/global_cubit.dart';
import 'package:flutter/material.dart' show BuildContext, Color;
import 'package:morpheme_library/morpheme_library.dart';

extension MorphemeColorExtension on BuildContext {
  MorphemeColor get color => read<GlobalCubit>().state.theme.color;
}

abstract base class MorphemeColor {
  Color get white;
  Color get black;
  Color get grey;
  Color get grey1;
  Color get grey2;
  Color get grey3;
  Color get grey4;
  Color get primary;
  Color get secondary;
  Color get primaryLighter;
  Color get warning;
  Color get info;
  Color get success;
  Color get error;
  Color get bgError;
  Color get bgInfo;
  Color get bgSuccess;
  Color get bgWarning;
}
