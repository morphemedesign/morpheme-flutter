import 'package:core/src/l10n/s_id.dart';
import 'package:flutter/material.dart' show BuildContext;

import '../../l10n/s.dart';

extension LocalizationExtension on BuildContext {
  S get s => S.of(this) ?? SId();
}
