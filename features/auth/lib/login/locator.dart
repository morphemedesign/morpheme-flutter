import 'package:core/core.dart';

import 'data/datasources/login_remote_data_source.dart';
import 'data/repositories/login_repository_impl.dart';
import 'domain/repositories/login_repository.dart';
import 'domain/usecases/login_use_case.dart';
import 'presentation/bloc/login/login_bloc.dart';
import 'presentation/cubit/login_cubit.dart';

void setupLocatorLogin() {
  // *Cubit
  locator
    ..registerFactory(
      () => LoginCubit(
        loginBloc: locator(),
      ),
    )
    // *Bloc
    ..registerFactory(
      () => LoginBloc(useCase: locator()),
    )

    // *Usecase
    ..registerLazySingleton(
      () => LoginUseCase(repository: locator()),
    )
    // *Repository
    ..registerLazySingleton<LoginRepository>(
      () => LoginRepositoryImpl(
        remoteDataSource: locator(),
      ),
    )
    // *Datasource
    ..registerLazySingleton<LoginRemoteDataSource>(
      () => LoginRemoteDataSourceImpl(
        http: locator(),
      ),
    );
}
