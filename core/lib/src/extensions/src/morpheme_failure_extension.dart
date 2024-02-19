import 'package:core/src/component/component.dart';
import 'package:flutter/material.dart' show BuildContext, ValueKey;
import 'package:morpheme_library/morpheme_library.dart';

import 'snackbar_extension.dart';

extension MorphemeFailureExtension on MorphemeFailure {
  void showSnackbar(BuildContext context) => context.showSnackBar(
        MorphemeSnackBar.error(
          key: const ValueKey('snackbarError'),
          context: context,
          message: message,
        ),
      );
}
