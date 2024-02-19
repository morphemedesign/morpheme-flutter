import 'package:core/core.dart';

import '../../data/models/body/login_body.dart';
import '../entities/login_entity.dart';

abstract class LoginRepository {
  Future<Either<MorphemeFailure, LoginEntity>> login(LoginBody body);
}
