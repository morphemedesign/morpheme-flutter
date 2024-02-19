import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../../data/models/body/forgot_password_body.dart';
import '../bloc/forgot_password/forgot_password_bloc.dart';

part 'forgot_password_state.dart';

class ForgotPasswordCubit extends MorphemeCubit<ForgotPasswordStateCubit> {
  ForgotPasswordCubit({required this.forgotPasswordBloc})
      : super(const ForgotPasswordStateCubit());

  final ForgotPasswordBloc forgotPasswordBloc;

  final emailKey = GlobalKey<MorphemeTextFieldState>();

  @override
  List<BlocProvider> blocProviders(BuildContext context) => [
        BlocProvider<ForgotPasswordBloc>(
            create: (context) => forgotPasswordBloc),
      ];

  @override
  List<BlocListener> blocListeners(BuildContext context) => [
        BlocListener<ForgotPasswordBloc, ForgotPasswordState>(
            listener: _listenerForgotPassword),
      ];

  @override
  void dispose() {
    forgotPasswordBloc.close();
  }

  void onForgotPasswordPressed(BuildContext context) {
    emailKey.validate();
    if (emailKey.isValid) {
      forgotPasswordBloc.add(
        FetchForgotPassword(const ForgotPasswordBody(delay: 30)),
      );
    }
  }

  void _listenerForgotPassword(
      BuildContext context, ForgotPasswordState state) {
    state.when(
      onFailed: (state) => state.failure.showSnackbar(context),
    );
  }
}
