import 'package:auth/forgot_password/presentation/pages/forgot_password_page.dart';
import 'package:auth/login/presentation/pages/login_page.dart';
import 'package:auth/register/presentation/pages/register_page.dart';
import 'package:core/core.dart';

List<RouteBase> authRoutes = [
  GoRoute(
    path: joinRoutes([MorphemeRoutes.login]),
    builder: (context, state) => const LoginPage(),
    routes: [
      GoRoute(
        path: MorphemeRoutes.register,
        builder: (context, state) => const RegisterPage(),
      ),
      GoRoute(
        path: MorphemeRoutes.forgotPassword,
        builder: (context, state) => const ForgotPasswordPage(),
      ),
    ],
  ),
];
