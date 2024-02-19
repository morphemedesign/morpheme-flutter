import 'package:auth/register/data/models/body/register_body.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../bloc/register/register_bloc.dart';

part 'register_state.dart';

class RegisterCubit extends MorphemeCubit<RegisterStateCubit> {
  RegisterCubit({required this.registerBloc})
      : super(const RegisterStateCubit());

  final RegisterBloc registerBloc;

  final emailKey = GlobalKey<MorphemeTextFieldState>();
  final passwordKey = GlobalKey<MorphemeTextFieldState>();

  @override
  List<BlocProvider> blocProviders(BuildContext context) => [
        BlocProvider<RegisterBloc>(create: (context) => registerBloc),
      ];

  @override
  List<BlocListener> blocListeners(BuildContext context) => [
        BlocListener<RegisterBloc, RegisterState>(listener: _listenerRegister),
      ];

  @override
  void dispose() {
    registerBloc.close();
  }

  void onAccountDemoPressed(BuildContext context) {
    emailKey.text = 'eve.holt@reqres.in';
    passwordKey.text = 'pistol';
  }

  bool _isValidEmailPassword() => emailKey.isValid && passwordKey.isValid;
  void _setValidate() {
    emailKey.validate();
    passwordKey.validate();
  }

  void onSignUpWithEmailPressed(BuildContext context) {
    _setValidate();
    if (_isValidEmailPassword()) {
      registerBloc.add(
        FetchRegister(
          RegisterBody(email: emailKey.text, password: passwordKey.text),
        ),
      );
    }
  }

  void onLoginWithFacebookPressed() {}

  void onLoginWithGooglePressed() {}

  void onLoginWithApplePressed() {}

  void onLoginPressed(BuildContext context) => context.pop();

  void _listenerRegister(BuildContext context, RegisterState state) {
    state.when(
      onFailed: (state) => state.failure.showSnackbar(context),
      onSuccess: (state) => context.goToHome(),
    );
  }
}
