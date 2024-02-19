import 'package:core/core.dart';

import '../../data/models/body/register_body.dart';
import '../entities/register_entity.dart';
import '../repositories/register_repository.dart';

class RegisterUseCase implements UseCase<RegisterEntity, RegisterBody> {
  RegisterUseCase({
    required this.repository,
  });

  final RegisterRepository repository;

  @override
  Future<Either<MorphemeFailure, RegisterEntity>> call(RegisterBody body) {
    return repository.register(body);
  }
}
