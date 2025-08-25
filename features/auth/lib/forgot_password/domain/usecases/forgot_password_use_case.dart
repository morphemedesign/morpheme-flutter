import 'package:core/core.dart';

import '../../data/models/body/forgot_password_body.dart';
import '../entities/forgot_password_entity.dart';
import '../repositories/forgot_password_repository.dart';

class ForgotPasswordUseCase
    implements UseCase<ForgotPasswordEntity, ForgotPasswordBody> {
  ForgotPasswordUseCase({
    required this.repository,
  });

  final ForgotPasswordRepository repository;

  @override
  Future<Either<MorphemeFailure, ForgotPasswordEntity>> call(
    ForgotPasswordBody body, {
    Map<String, String>? headers,
    CacheStrategy? cacheStrategy,
  }) {
    return repository.forgotPassword(
      body,
      headers: headers,
      cacheStrategy: cacheStrategy,
    );
  }
}
