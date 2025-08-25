import 'package:core/core.dart';

import '../../data/models/body/forgot_password_body.dart';
import '../entities/forgot_password_entity.dart';

abstract class ForgotPasswordRepository {
  Future<Either<MorphemeFailure, ForgotPasswordEntity>> forgotPassword(
    ForgotPasswordBody body, {
    Map<String, String>? headers,
    CacheStrategy? cacheStrategy,
  });
}
