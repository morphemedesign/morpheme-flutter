import 'package:flutter/material.dart';

extension SnackBarExtension on BuildContext {
  void showSnackBar(SnackBar snackBar) {
    ScaffoldMessenger.maybeOf(this)?.removeCurrentSnackBar();
    ScaffoldMessenger.maybeOf(this)?.showSnackBar(snackBar);
  }
}
