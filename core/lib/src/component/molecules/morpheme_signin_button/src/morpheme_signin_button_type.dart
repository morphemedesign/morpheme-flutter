import 'package:assets/assets.dart';
import 'package:flutter/material.dart';

abstract class MorphemeSigninButtonType {
  MorphemeSigninButtonType({
    required this.pathAsset,
    required this.color,
    required this.textColor,
    required this.text,
  });
  final String pathAsset;
  final Color color;
  final Color textColor;
  final String text;
}

class MorphemeSigninTypeGoogle extends MorphemeSigninButtonType {
  MorphemeSigninTypeGoogle()
      : super(
          pathAsset: MorphemeImages.google,
          color: Colors.white,
          textColor: Colors.black54,
          text: 'Continue with Google',
        );
}

class MorphemeSigninTypeFacebook extends MorphemeSigninButtonType {
  MorphemeSigninTypeFacebook()
      : super(
          pathAsset: MorphemeImages.facebook,
          color: const Color(0xFF1877F2),
          textColor: Colors.white,
          text: 'Continue with Facebook',
        );
}

class MorphemeSigninTypeApple extends MorphemeSigninButtonType {
  MorphemeSigninTypeApple()
      : super(
          pathAsset: MorphemeImages.apple,
          color: Colors.black,
          textColor: Colors.white,
          text: 'Continue with Apple',
        );
}
