import 'package:core/core.dart';
import 'package:splash/splash_page.dart';

List<RouteBase> splashRoutes = [
  GoRoute(
    path: joinRoutes([MorphemeRoutes.splash]),
    builder: (context, state) => const SplashPage(),
  ),
];
