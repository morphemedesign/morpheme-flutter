import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../../../data/models/body/login_body.dart';
import '../../../domain/entities/login_entity.dart';
import '../../../domain/usecases/login_use_case.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase useCase;

  LoginBloc({
    required this.useCase,
  }) : super(LoginInitial()) {
    on<FetchLogin>((event, emit) async {
      emit(LoginLoading(event.body, event.extra));
      final result = await useCase(event.body);
      emit(
        result.fold(
          (failure) => LoginFailed(event.body, failure, event.extra),
          (success) => LoginSuccess(event.body, success, event.extra),
        ),
      );
    });
  }
}
