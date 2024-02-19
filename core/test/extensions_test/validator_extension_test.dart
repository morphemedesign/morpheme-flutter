import 'package:core/src/component/molecules/morpheme_text_filed/morpheme_text_field.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('ValidatorValue return true for value is null', () {
    const ValidatorValue? validatorValue = null;

    final isValid = validatorValue.isValid();

    expect(isValid, true);
  });

  test(
      'ValidatorValue return true for value.statusMessage is ShowStatusMessage.none',
      () {
    const ValidatorValue validatorValue =
        ValidatorValue(message: '', showStatusMessage: ShowStatusMessage.none);

    final isValid = validatorValue.isValid();

    expect(isValid, true);
  });

  test(
      'ValidatorValue return false for value.statusMessage is ShowStatusMessage.success',
      () {
    const ValidatorValue validatorValue = ValidatorValue(
        message: 'success', showStatusMessage: ShowStatusMessage.success);

    final isValid = validatorValue.isValid();

    expect(isValid, true);
  });

  test(
      'ValidatorValue return false for value.statusMessage is ShowStatusMessage.error',
      () {
    const ValidatorValue validatorValue = ValidatorValue(
        message: 'error', showStatusMessage: ShowStatusMessage.error);

    final isValid = validatorValue.isValid();

    expect(isValid, false);
  });

  test(
      'ValidatorValue return false for value.statusMessage is ShowStatusMessage.info',
      () {
    const ValidatorValue validatorValue = ValidatorValue(
        message: 'info', showStatusMessage: ShowStatusMessage.info);

    final isValid = validatorValue.isValid();

    expect(isValid, false);
  });

  test(
      'ValidatorValue return false for value.statusMessage is ShowStatusMessage.warning',
      () {
    const ValidatorValue validatorValue = ValidatorValue(
        message: 'warning', showStatusMessage: ShowStatusMessage.warning);

    final isValid = validatorValue.isValid();

    expect(isValid, false);
  });
}
