import 'package:core/core.dart';
import 'package:morpheme/main/main_page.dart';

import 'home_routes.dart';
import 'news_routes.dart';
import 'profile_routes.dart';

List<RouteBase> mainRoutes = [
  StatefulShellRoute.indexedStack(
    builder: (context, state, navigationShell) =>
        MainPage(navigationShell: navigationShell),
    branches: [
      ...homeRoutes,
      ...newsRoutes,
      ...profileRoutes,
    ],
  ),
];
