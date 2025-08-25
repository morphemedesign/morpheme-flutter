import 'package:core/core.dart';

import '../../domain/entities/login_entity.dart';
import '../../mapper.dart';
import '../../domain/repositories/login_repository.dart';
import '../datasources/login_remote_data_source.dart';
import '../models/body/login_body.dart';

class LoginRepositoryImpl implements LoginRepository {
  LoginRepositoryImpl({
    required this.remoteDataSource,
  });

  final LoginRemoteDataSource remoteDataSource;

  @override
  Future<Either<MorphemeFailure, LoginEntity>> login(
    LoginBody body, {
    Map<String, String>? headers,
    CacheStrategy? cacheStrategy,
  }) async {
    try {
      final data = await remoteDataSource.login(
        body,
        headers: headers,
        cacheStrategy: cacheStrategy,
      );
      return Right(data.toEntity());
    } on MorphemeException catch (e) {
      return Left(e.toMorphemeFailure());
    } catch (e) {
      return Left(InternalFailure(e.toString()));
    }
  }
}
