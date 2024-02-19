import 'package:core/core.dart';
import 'package:flutter/material.dart' show BuildContext;

abstract class ValidatorValueHelper {
  static ValidatorValue? validatorEmail(BuildContext context, String value) {
    if (!value.isEmail) {
      return ValidatorValue(
        message: context.s.emailError,
        showStatusMessage: ShowStatusMessage.error,
      );
    }
    return null;
  }

  static ValidatorValue? validatorPassword(BuildContext context, String value) {
    if (value.length < 6) {
      return ValidatorValue(
        message: context.s.passwordError,
        showStatusMessage: ShowStatusMessage.error,
      );
    }
    return null;
  }

  static bool isValidEmailAndPassword(
    BuildContext context,
    String email,
    String password,
  ) {
    return validatorEmail(context, email).isValid() &&
        validatorPassword(context, password).isValid();
  }
}
