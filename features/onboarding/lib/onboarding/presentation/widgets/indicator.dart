import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../cubit/onboarding_cubit.dart';

class Indicator extends StatelessWidget {
  const Indicator({
    super.key,
    required this.length,
    required this.selected,
  });

  final int length;
  final int selected;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        length,
        (index) => InkWell(
          onTap: () =>
              context.read<OnboardingCubit>().onPageChangeExternal(index),
          child: Container(
            key: Key('dot$index'),
            margin: const EdgeInsets.all(ConstantSizes.s4),
            width: ConstantSizes.s8,
            height: ConstantSizes.s8,
            decoration: BoxDecoration(
              color: index == selected
                  ? context.color.primary
                  : context.color.grey1,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
