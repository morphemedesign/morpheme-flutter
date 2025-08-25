import 'package:core/core.dart';

class RegisterEntity extends Equatable {
  const RegisterEntity({
    this.id,
    this.token,
  });

  final int? id;
  final String? token;

  RegisterEntity copyWith({
    int? id,
    String? token,
  }) {
    return RegisterEntity(
      id: id ?? this.id,
      token: token ?? this.token,
    );
  }

  @override
  List<Object?> get props => [
        id,
        token,
      ];
}
