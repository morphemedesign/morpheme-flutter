import 'package:core/core.dart';
import 'package:flutter/material.dart';

class ThirdLoginButton extends StatelessWidget {
  const ThirdLoginButton({
    super.key,
    required this.onFacebookPressed,
    required this.onGooglePressed,
    required this.onApplePressed,
  });

  final GestureTapCallback onFacebookPressed;
  final GestureTapCallback onGooglePressed;
  final GestureTapCallback onApplePressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MorphemeSigninButton(
          key: const ValueKey(MorphemeDataTesId.buttonSignInWithFacebook),
          onPressed: onFacebookPressed,
          buttonType: MorphemeSigninTypeFacebook(),
        ),
        const MorphemeSpacing.vertical16(),
        MorphemeSigninButton(
          key: const ValueKey(MorphemeDataTesId.buttonSignInWithGoogle),
          onPressed: onGooglePressed,
          buttonType: MorphemeSigninTypeGoogle(),
        ),
        const MorphemeSpacing.vertical16(),
        MorphemeSigninButton(
          key: const ValueKey(MorphemeDataTesId.buttonSignInWithApple),
          onPressed: onApplePressed,
          buttonType: MorphemeSigninTypeApple(),
        ),
      ],
    );
  }
}
