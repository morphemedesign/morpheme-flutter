import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../widgets/onboarding.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends MorphemeCubit<OnboardingStateCubit> {
  OnboardingCubit()
      : super(const OnboardingStateCubit(
          selected: 0,
          isLast: false,
        ));

  final pageController = PageController();

  final listOnboarding = <Onboarding>[
    const Onboarding(
      image: MorphemeImages.logoLight,
      title: 'Onboarding 1',
      message: 'Aliqua veniam exercitation officia sunt sint.',
    ),
    const Onboarding(
      image: MorphemeImages.logoLight,
      title: 'Onboarding 2',
      message:
          'Aute consectetur cupidatat in consectetur. Occaecat id culpa pariatur aliquip occaecat consequat sunt voluptate exercitation fugiat. Pariatur Lorem reprehenderit ullamco excepteur deserunt proident proident reprehenderit ad mollit culpa non culpa. Aliqua officia officia nisi magna consectetur culpa est ullamco id.',
    ),
    const Onboarding(
      image: MorphemeImages.logoLight,
      title: 'Onboarding 3',
      message:
          'Pariatur aliqua aute non reprehenderit cillum ea dolore cupidatat. Aliquip incididunt consectetur dolore amet non et enim quis sit voluptate. Veniam proident esse et aliqua commodo non adipisicing sunt adipisicing laboris. Proident labore sit quis dolore Lorem. Nostrud ex et amet nisi cupidatat consequat.',
    ),
  ];

  void onPageChange(int value) => emit(state.copyWith(
        selected: value,
        isLast: value == listOnboarding.length - 1,
      ));

  void onPageChangeExternal(int value) {
    pageController.animateToPage(
      value,
      duration: const Duration(milliseconds: 350),
      curve: Curves.ease,
    );
  }

  void onSkipPressed() => onPageChangeExternal(listOnboarding.length - 1);

  void onNextPressed(BuildContext context) {
    if (state.isLast) {
      context.goToLogin();
    } else {
      onPageChangeExternal(state.selected + 1);
    }
  }
}
