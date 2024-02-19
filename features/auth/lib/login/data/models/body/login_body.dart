import 'package:core/core.dart';

class LoginBody extends Equatable {
  const LoginBody({
    this.email,
    this.password,
  });

  final String? email;
  final String? password;

  Map<String, dynamic> toMap() {
    return {
      if (email != null) 'email': email,
      if (password != null) 'password': password,
    };
  }

  @override
  List<Object?> get props => [
        email,
        password,
      ];
}
