import 'package:core/core.dart';

import 'presentation/cubit/onboarding_cubit.dart';

void setupLocatorOnboarding() {
  // *Cubit
  locator.registerFactory(() => OnboardingCubit());
}
