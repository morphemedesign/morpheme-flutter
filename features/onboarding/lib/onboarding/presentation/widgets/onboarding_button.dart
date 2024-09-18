import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../cubit/onboarding_cubit.dart';
import 'indicator.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    final listOnboarding =
        context.select((OnboardingCubit element) => element.listOnboarding);
    final selected =
        context.select((OnboardingCubit element) => element.state.selected);
    final isLast =
        context.select((OnboardingCubit element) => element.state.isLast);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        isLast
            ? const SizedBox(width: 100)
            : MorphemeButton.text(
                key: const ValueKey(ConstantDataTesId.buttonSkip),
                isExpand: false,
                text: context.s.skip,
                style: TextButton.styleFrom(
                  minimumSize: const Size.fromWidth(100),
                ),
                onPressed: context.read<OnboardingCubit>().onSkipPressed,
              ),
        Indicator(length: listOnboarding.length, selected: selected),
        MorphemeButton.elevated(
          key: const ValueKey(ConstantDataTesId.buttonNext),
          text: isLast ? context.s.started : context.s.next,
          isExpand: false,
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromWidth(100),
          ),
          onPressed: () =>
              context.read<OnboardingCubit>().onNextPressed(context),
        ),
      ],
    );
  }
}
