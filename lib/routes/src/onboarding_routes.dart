import 'package:core/core.dart';
import 'package:onboarding/onboarding/presentation/pages/onboarding_page.dart';

List<RouteBase> onboardingRoutes = [
  GoRoute(
    path: joinRoutes([MorphemeRoutes.onboarding]),
    builder: (context, state) => const OnboardingPage(),
  ),
];
