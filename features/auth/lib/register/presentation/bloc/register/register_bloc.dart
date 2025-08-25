import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../../../data/models/body/register_body.dart';
import '../../../domain/entities/register_entity.dart';
import '../../../domain/usecases/register_use_case.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends MorphemeBloc<RegisterEvent, RegisterState> {
  RegisterBloc({
    required this.useCase,
  }) : super(RegisterInitial()) {
    on<FetchRegister>((event, emit) async {
      emit(
        RegisterLoading(
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
        emit(RegisterCanceled(event.extra));
        return;
      }
      emit(
        result.fold(
          (failure) => RegisterFailed(
            event.body,
            event.headers,
            failure,
            event.extra,
          ),
          (success) => RegisterSuccess(
            event.body,
            event.headers,
            success,
            event.extra,
          ),
        ),
      );
    });
    on<CancelRegister>((event, emit) async {
      _cancelableOperation?.cancel();
      _cancelableOperation = null;
      emit(RegisterCanceled(event.extra));
    });
  }

  final RegisterUseCase useCase;

  CancelableOperation<Either<MorphemeFailure, RegisterEntity>>?
      _cancelableOperation;

  @override
  Future<void> close() {
    _cancelableOperation?.cancel();
    _cancelableOperation = null;
    return super.close();
  }
}
