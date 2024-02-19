import 'package:core/core.dart';

import 'data/datasources/register_remote_data_source.dart';
import 'data/repositories/register_repository_impl.dart';
import 'domain/repositories/register_repository.dart';
import 'domain/usecases/register_use_case.dart';
import 'presentation/bloc/register/register_bloc.dart';
import 'presentation/cubit/register_cubit.dart';

void setupLocatorRegister() {
  // *Cubit
  locator.registerFactory(() => RegisterCubit(registerBloc: locator()));
  // *Bloc
  locator.registerFactory(() => RegisterBloc(useCase: locator()));

  // *Usecase
  locator.registerLazySingleton(() => RegisterUseCase(repository: locator()));
  // *Repository
  locator.registerLazySingleton<RegisterRepository>(
    () => RegisterRepositoryImpl(remoteDataSource: locator()),
  );
  // *Datasource
  locator.registerLazySingleton<RegisterRemoteDataSource>(
    () => RegisterRemoteDataSourceImpl(http: locator()),
  );
}
