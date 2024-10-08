import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../../../data/models/body/forgot_password_body.dart';
import '../../../domain/entities/forgot_password_entity.dart';
import '../../../domain/usecases/forgot_password_use_case.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';

class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  ForgotPasswordBloc({
    required this.useCase,
  }) : super(ForgotPasswordInitial()) {
    on<FetchForgotPassword>((event, emit) async {
      emit(ForgotPasswordLoading(
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
          (failure) => ForgotPasswordFailed(
            event.body,
            event.headers,
            failure,
            event.extra,
          ),
          (success) => ForgotPasswordSuccess(
            event.body,
            event.headers,
            success,
            event.extra,
          ),
        ),
      );
    });
  }

  final ForgotPasswordUseCase useCase;
}
