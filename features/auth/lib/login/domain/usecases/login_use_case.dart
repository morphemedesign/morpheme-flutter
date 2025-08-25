import 'package:core/core.dart';

import '../../data/models/body/login_body.dart';
import '../entities/login_entity.dart';
import '../repositories/login_repository.dart';

class LoginUseCase implements UseCase<LoginEntity, LoginBody> {
  LoginUseCase({
    required this.repository,
  });

  final LoginRepository repository;

  @override
  Future<Either<MorphemeFailure, LoginEntity>> call(
    LoginBody body, {
    Map<String, String>? headers,
    CacheStrategy? cacheStrategy,
  }) {
    return repository.login(
      body,
      headers: headers,
      cacheStrategy: cacheStrategy,
    );
  }
}
