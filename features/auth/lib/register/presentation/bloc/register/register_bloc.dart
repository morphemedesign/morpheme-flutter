import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../../../data/models/body/register_body.dart';
import '../../../domain/entities/register_entity.dart';
import '../../../domain/usecases/register_use_case.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterUseCase useCase;

  RegisterBloc({
    required this.useCase,
  }) : super(RegisterInitial()) {
    on<FetchRegister>((event, emit) async {
      emit(RegisterLoading(event.body, event.extra));
      final result = await useCase(event.body);
      emit(
        result.fold(
          (failure) => RegisterFailed(event.body, failure, event.extra),
          (success) => RegisterSuccess(event.body, success, event.extra),
        ),
      );
    });
  }
}
