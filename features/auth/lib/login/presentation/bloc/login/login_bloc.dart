import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../../../data/models/body/login_body.dart';
import '../../../domain/entities/login_entity.dart';
import '../../../domain/usecases/login_use_case.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({
    required this.useCase,
  }) : super(LoginInitial()) {
    on<FetchLogin>((event, emit) async {
      emit(LoginLoading(
        event.body,
        event.headers,
        event.extra,
      ));
      final result = await useCase(
        event.body,
        headers: event.headers,
      );
      emit(
        result.fold(
          (failure) => LoginFailed(
            event.body,
            event.headers,
            failure,
            event.extra,
          ),
          (success) => LoginSuccess(
            event.body,
            event.headers,
            success,
            event.extra,
          ),
        ),
      );
    });
  }

  final LoginUseCase useCase;
}
