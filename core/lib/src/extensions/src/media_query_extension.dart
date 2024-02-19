import 'package:flutter/material.dart' show BuildContext, MediaQuery;

import '../../helper/src/calculate_percentage.dart';

extension MediaQueryExtension on BuildContext {
  double widthPercentage(int percentage) =>
      calculatePercentage(percentage, MediaQuery.of(this).size.width);

  double heightPercentage(int percentage) =>
      calculatePercentage(percentage, MediaQuery.of(this).size.height);
}
