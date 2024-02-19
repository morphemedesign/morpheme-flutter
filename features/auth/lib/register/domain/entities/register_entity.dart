import 'package:core/core.dart';

class RegisterEntity extends Equatable {
  const RegisterEntity({
    required this.id,
    required this.token,
  });

  final int? id;
  final String? token;

  @override
  List<Object?> get props => [
        id,
        token,
      ];
}
