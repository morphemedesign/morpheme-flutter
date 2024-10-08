import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../cubit/onboarding_cubit.dart';
import '../widgets/widgets.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage>
    with MorphemeStatePage<OnboardingPage, OnboardingCubit> {
  @override
  OnboardingCubit setCubit() => locator();

  @override
  Widget buildWidget(BuildContext context) {
    return Scaffold(
      key: const ValueKey(ConstantDataTesId.pageOnboarding),
      body: Stack(
        children: [
          PageView(
            key: const ValueKey(ConstantDataTesId.scrollOnboarding),
            controller: cubit.pageController,
            onPageChanged: cubit.onPageChange,
            children: cubit.listOnboarding,
          ),
          const Positioned(
            left: ConstantSizes.s16,
            right: ConstantSizes.s16,
            bottom: ConstantSizes.s16,
            child: OnboardingButton(),
          ),
        ],
      ),
    );
  }
}
