import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../../../data/models/body/forgot_password_body.dart';
import '../../../domain/entities/forgot_password_entity.dart';
import '../../../domain/usecases/forgot_password_use_case.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';

class ForgotPasswordBloc
    extends MorphemeBloc<ForgotPasswordEvent, ForgotPasswordState> {
  ForgotPasswordBloc({
    required this.useCase,
  }) : super(ForgotPasswordInitial()) {
    on<FetchForgotPassword>((event, emit) async {
      emit(
        ForgotPasswordLoading(
          event.body,
          event.headers,
          event.extra,
        ),
      );
      _cancelableOperation = CancelableOperation.fromFuture(
        useCase(
          event.body,
          headers: event.headers,
          cacheStrategy: event.cacheStrategy,
        ),
      );
      final result = await _cancelableOperation?.valueOrCancellation();

      if (result == null) {
        emit(ForgotPasswordCanceled(event.extra));
        return;
      }
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
    on<CancelForgotPassword>((event, emit) async {
      _cancelableOperation?.cancel();
      _cancelableOperation = null;
      emit(ForgotPasswordCanceled(event.extra));
    });
  }

  final ForgotPasswordUseCase useCase;

  CancelableOperation<Either<MorphemeFailure, ForgotPasswordEntity>>?
      _cancelableOperation;

  @override
  Future<void> close() {
    _cancelableOperation?.cancel();
    _cancelableOperation = null;
    return super.close();
  }
}
