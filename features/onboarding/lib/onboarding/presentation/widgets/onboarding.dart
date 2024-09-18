import 'package:core/core.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({
    super.key,
    required this.image,
    required this.title,
    required this.message,
  });

  final String image;
  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: ConstantSizes.s32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image,
              key: Key('image$title'), width: context.widthPercentage(50)),
          const MorphemeSpacing.vertical40(),
          MorphemeText.titleLarge(title, color: context.color.primary),
          const MorphemeSpacing.vertical20(),
          MorphemeText.bodyLarge(message),
        ],
      ),
    );
  }
}
