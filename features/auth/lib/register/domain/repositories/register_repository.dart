import 'package:core/core.dart';

import '../../data/models/body/register_body.dart';
import '../entities/register_entity.dart';

abstract class RegisterRepository {
  Future<Either<MorphemeFailure, RegisterEntity>> register(RegisterBody body);
}
