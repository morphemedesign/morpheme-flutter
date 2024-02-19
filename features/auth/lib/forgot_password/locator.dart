import 'package:core/core.dart';

import 'data/datasources/forgot_password_remote_data_source.dart';
import 'data/repositories/forgot_password_repository_impl.dart';
import 'domain/repositories/forgot_password_repository.dart';
import 'domain/usecases/forgot_password_use_case.dart';
import 'presentation/bloc/forgot_password/forgot_password_bloc.dart';
import 'presentation/cubit/forgot_password_cubit.dart';

void setupLocatorForgotPassword() {
  // *Cubit
  locator.registerFactory(
      () => ForgotPasswordCubit(forgotPasswordBloc: locator()));
  // *Bloc
  locator.registerFactory(() => ForgotPasswordBloc(useCase: locator()));

  // *Usecase
  locator.registerLazySingleton(
      () => ForgotPasswordUseCase(repository: locator()));
  // *Repository
  locator.registerLazySingleton<ForgotPasswordRepository>(
    () => ForgotPasswordRepositoryImpl(remoteDataSource: locator()),
  );
  // *Datasource
  locator.registerLazySingleton<ForgotPasswordRemoteDataSource>(
    () => ForgotPasswordRemoteDataSourceImpl(http: locator()),
  );
}
