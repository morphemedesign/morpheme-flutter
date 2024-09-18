import 'package:core/core.dart';
import 'package:home/home/presentation/pages/home_page.dart';
import 'package:selling/selling/presentation/pages/selling_page.dart';

List<StatefulShellBranch> homeRoutes = [
  StatefulShellBranch(
    routes: [
      GoRoute(
        path: joinRoutes([ConstantRoutes.home]),
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
            path: ConstantRoutes.selling,
            parentNavigatorKey: rootNavigatorKey,
            builder: (context, state) => const SellingPage(),
          ),
        ],
      ),
    ],
  ),
];
