import 'package:core/src/component/molecules/morpheme_button/morpheme_button.dart';
import 'package:core/src/constants/src/constant_sizes.dart';
import 'package:core/src/extensions/extensions.dart';
import 'package:flutter/material.dart';

import 'morpheme_signin_button_type.dart';

class MorphemeSigninButton extends StatelessWidget {
  const MorphemeSigninButton({
    super.key,
    required this.onPressed,
    required this.buttonType,
    this.text,
    this.isExpand = true,
    this.isLoading = false,
  });

  /// onPressed function should be passed in as a required field.
  final GestureTapCallback onPressed;

  /// button type should be used from the class `MorphemeSigninTypeGoogle`, `MorphemeSigninTypeFacebook` or `MorphemeSigninTypeApple`.
  final MorphemeSigninButtonType buttonType;

  /// overrides the default button text
  final String? text;

  /// expand size button to infinity
  final bool isExpand;

  /// bool show loading
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isExpand ? double.infinity : null,
      height: ConstantSizes.heightButton,
      child: MorphemeButton.elevated(
        onPressed: onPressed,
        text: text ?? buttonType.text,
        textStyle: context.textTheme.labelLarge?.copyWith(
          color: buttonType.textColor,
        ),
        icon: Image.asset(buttonType.pathAsset, height: ConstantSizes.s24),
        style: ElevatedButton.styleFrom(backgroundColor: buttonType.color),
      ),
    );
  }
}
