import 'package:core/core.dart';

import '../../domain/entities/forgot_password_entity.dart';
import '../../domain/repositories/forgot_password_repository.dart';
import '../datasources/forgot_password_remote_data_source.dart';
import '../models/body/forgot_password_body.dart';
import '../../mapper.dart';

class ForgotPasswordRepositoryImpl implements ForgotPasswordRepository {
  ForgotPasswordRepositoryImpl({
    required this.remoteDataSource,
  });

  final ForgotPasswordRemoteDataSource remoteDataSource;

  @override
  Future<Either<MorphemeFailure, ForgotPasswordEntity>> forgotPassword(
    ForgotPasswordBody body, {
    Map<String, String>? headers,
  }) async {
    try {
      final data = await remoteDataSource.forgotPassword(
        body,
        headers: headers,
      );
      return Right(data.toEntity());
    } on MorphemeException catch (e) {
      return Left(e.toMorphemeFailure());
    } catch (e) {
      return Left(InternalFailure(e.toString()));
    }
  }
}
