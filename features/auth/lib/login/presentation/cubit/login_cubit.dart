import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../../data/models/body/login_body.dart';
import '../bloc/login/login_bloc.dart';

part 'login_state.dart';

class LoginCubit extends MorphemeCubit<LoginStateCubit> {
  LoginCubit({required this.loginBloc}) : super(LoginStateCubit());

  final LoginBloc loginBloc;

  final emailKey = GlobalKey<MorphemeTextFieldState>();
  final passwordKey = GlobalKey<MorphemeTextFieldState>();

  @override
  List<BlocProvider> blocProviders(BuildContext context) => [
        BlocProvider<LoginBloc>(create: (context) => loginBloc),
      ];

  @override
  List<BlocListener> blocListeners(BuildContext context) => [
        BlocListener<LoginBloc, LoginState>(listener: _listenerLogin),
      ];

  @override
  void dispose() {
    loginBloc.close();
  }

  void onLoginWithFacebookPressed() {}

  void onLoginWithGooglePressed() {}

  void onLoginWithApplePressed() {}

  void onAccountDemoPressed(BuildContext context) {
    emailKey.text = 'eve.holt@reqres.in';
    passwordKey.text = 'cityslicka';
  }

  void onForgotPasswordPressed(BuildContext context) {
    context.goToForgotPassword();
  }

  bool _isValidEmailPassword() => emailKey.isValid && passwordKey.isValid;
  void _setValidate() {
    emailKey.validate();
    passwordKey.validate();
  }

  void onLoginWithEmailPressed(BuildContext context) {
    _setValidate();
    if (_isValidEmailPassword()) {
      _fetchLogin(LoginBody(email: emailKey.text, password: passwordKey.text));
    }
  }

  void onRegisterPressed(BuildContext context) => context.goToRegister();

  void _fetchLogin(LoginBody body) {
    loginBloc.add(FetchLogin(body));
  }

  void _listenerLogin(BuildContext context, LoginState state) {
    state.when(
      onFailed: (state) => state.failure.showSnackbar(context),
      onSuccess: (state) => context.goToHome(),
    );
  }
}
