import 'package:core/src/extensions/extensions.dart';
import 'package:core/src/routes/routes.dart';
import 'package:dependency_manager/dependency_manager.dart' show GoRouterHelper;
import 'package:flutter/material.dart';

extension ExtensionRoutes on BuildContext {
  void goToOnboading() => go(joinRoutes([ConstantRoutes.onboarding]));
  void goToLogin() => go(joinRoutes([ConstantRoutes.login]));
  void goToRegister() => go(dynamicRoutes(ConstantRoutes.register));
  void goToForgotPassword() => go(dynamicRoutes(ConstantRoutes.forgotPassword));

  void goToHome() => go(joinRoutes([ConstantRoutes.home]));
  void goToNews() => go(joinRoutes([ConstantRoutes.news]));
  void goToProfile() => go(joinRoutes([ConstantRoutes.profile]));

  void goToSelling({
    GoRouterCallbackReturn? onReturn,
  }) =>
      goWithResult(dynamicRoutes(ConstantRoutes.selling), onReturn: onReturn);
}
