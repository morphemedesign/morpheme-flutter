import 'package:core/core.dart';

class LoginEntity extends Equatable {
  const LoginEntity({
    this.token,
  });

  final String? token;

  LoginEntity copyWith({
    String? token,
  }) {
    return LoginEntity(
      token: token ?? this.token,
    );
  }

  @override
  List<Object?> get props => [
        token,
      ];
}
