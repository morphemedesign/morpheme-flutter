import 'package:core/src/extensions/extensions.dart';
import 'package:core/src/global_variable.dart';
import 'package:dependency_manager/dependency_manager.dart'
    show GoRouter, GoRouterHelper;
import 'package:flutter/material.dart' show BuildContext;

String joinRoutes(List<String> paths) {
  if (paths.isEmpty) {
    return '/';
  } else if (paths[0].startsWith('/')) {
    return paths.join('/');
  } else {
    return '/${paths.join('/')}';
  }
}

String dynamicRoutes(String nextRoutes) {
  final goRouter = locator<GoRouter>();
  Uri uri = goRouter.routerDelegate.currentConfiguration.uri;
  uri = uri.replace(
    path: joinRoutes([uri.path, nextRoutes]),
    queryParameters: {},
  );
  return uri.toString();
}

abstract final class MorphemeRoutes {
  static const String splash = '/';
  static const String onboarding = 'onboarding';
  static const String login = 'login';
  static const String register = 'register';
  static const String forgotPassword = 'forgot-password';

  static const String main = 'main';
  static const String home = 'home';
  static const String news = 'news';
  static const String profile = 'profile';

  static const String selling = 'selling';
}

abstract final class PathRoutes {
  static String get onboarding => joinRoutes([MorphemeRoutes.onboarding]);

  static String get login => joinRoutes([MorphemeRoutes.login]);
  static String get register => dynamicRoutes(MorphemeRoutes.register);
  static String get forgotPassword =>
      dynamicRoutes(MorphemeRoutes.forgotPassword);

  static String get home => joinRoutes([MorphemeRoutes.home]);
  static String get news => joinRoutes([MorphemeRoutes.news]);
  static String get profile => joinRoutes([MorphemeRoutes.profile]);

  static String get selling => dynamicRoutes(MorphemeRoutes.selling);
}

extension MorphemeRoutesContextExtension on BuildContext {
  void goToOnboading() => go(PathRoutes.onboarding);
  void goToLogin() => go(PathRoutes.login);
  void goToRegister() => go(PathRoutes.register);
  void goToForgotPassword() => go(PathRoutes.forgotPassword);

  void goToHome() => go(PathRoutes.home);
  void goToNews() => go(PathRoutes.news);
  void goToProfile() => go(PathRoutes.profile);

  void goToSelling({
    required Function(dynamic result) onReturn,
  }) =>
      goWithResult(PathRoutes.selling, onReturn: onReturn);
}
