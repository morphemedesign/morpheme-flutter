import 'package:core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:morpheme/routes/src/auth_routes.dart';
import 'package:morpheme/routes/src/main_routes.dart';
import 'package:morpheme/routes/src/onboarding_routes.dart';
import 'package:morpheme/routes/src/splash_routes.dart';

abstract class Routes {
  static GoRouter router = GoRouter(
    navigatorKey: rootNavigatorKey,
    debugLogDiagnostics: kDebugMode,
    initialLocation: ConstantRoutes.splash,
    routes: [
      ...splashRoutes,
      ...onboardingRoutes,
      ...authRoutes,
      ...mainRoutes,
    ],
  );
}
