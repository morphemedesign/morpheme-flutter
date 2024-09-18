import 'package:core/src/global_variable.dart';
import 'package:dependency_manager/dependency_manager.dart'
    show GoRouter;

String joinRoutes(List<String> paths) {
  if (paths.isEmpty) {
    return '/';
  } else if (paths[0].startsWith('/')) {
    return paths.join('/');
  } else {
    return '/${paths.join('/')}';
  }
}

String dynamicRoutes(
  String nextRoutes, {
  Map<String, dynamic>? queryParameters,
}) {
  final goRouter = locator<GoRouter>();
  Uri uri = goRouter.routerDelegate.currentConfiguration.uri;
  uri = uri.replace(
    path: joinRoutes([uri.path, nextRoutes]),
    queryParameters: queryParameters ?? {},
  );
  return uri.toString();
}

bool isExistRoute(String route) => locator<GoRouter>()
    .routeInformationParser
    .configuration
    .findMatch(Uri.parse(route))
    .matches
    .isNotEmpty;