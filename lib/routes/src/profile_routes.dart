import 'package:core/core.dart';
import 'package:profile/profile/presentation/pages/profile_page.dart';

List<StatefulShellBranch> profileRoutes = [
  StatefulShellBranch(routes: [
    GoRoute(
      path: PathRoutes.profile,
      builder: (context, state) => const ProfilePage(),
    ),
  ]),
];
