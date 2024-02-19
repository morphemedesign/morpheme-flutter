import 'package:core/core.dart';
import 'package:news/news/presentation/pages/news_page.dart';

List<StatefulShellBranch> newsRoutes = [
  StatefulShellBranch(
    routes: [
      GoRoute(
        path: PathRoutes.news,
        builder: (context, state) => const NewsPage(),
      ),
    ],
  ),
];
