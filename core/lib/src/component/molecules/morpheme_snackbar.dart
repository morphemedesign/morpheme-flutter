import 'package:core/src/constants/constants.dart';
import 'package:core/src/themes/morpheme_colors/morpheme_colors.dart';
import 'package:flutter/material.dart';

class MorphemeSnackBar extends SnackBar {
  MorphemeSnackBar.error({
    super.key,
    required BuildContext context,
    required String message,
    Duration? duration,
    super.action,
  }) : super(
          backgroundColor: context.color.bgError,
          content: Text(
            message,
            style: TextStyle(color: context.color.error),
          ),
          duration: duration ?? const Duration(seconds: 3),
          behavior: SnackBarBehavior.floating,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(MorphemeSizes.s8)),
          ),
        );

  MorphemeSnackBar.info({
    super.key,
    required BuildContext context,
    required String message,
    Duration? duration,
    super.action,
  }) : super(
          backgroundColor: context.color.bgInfo,
          content: Text(
            message,
            style: TextStyle(color: context.color.info),
          ),
          duration: duration ?? const Duration(seconds: 3),
          behavior: SnackBarBehavior.floating,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(MorphemeSizes.s8)),
          ),
        );

  MorphemeSnackBar.success({
    super.key,
    required BuildContext context,
    required String message,
    Duration? duration,
    super.action,
  }) : super(
          backgroundColor: context.color.bgSuccess,
          content: Text(
            message,
            style: TextStyle(color: context.color.success),
          ),
          duration: duration ?? const Duration(seconds: 3),
          behavior: SnackBarBehavior.floating,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(MorphemeSizes.s8)),
          ),
        );

  MorphemeSnackBar.warning({
    super.key,
    required BuildContext context,
    required String message,
    Duration? duration,
    super.action,
  }) : super(
          backgroundColor: context.color.bgWarning,
          content: Text(
            message,
            style: TextStyle(color: context.color.warning),
          ),
          duration: duration ?? const Duration(seconds: 3),
          behavior: SnackBarBehavior.floating,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(MorphemeSizes.s8)),
          ),
        );
}
