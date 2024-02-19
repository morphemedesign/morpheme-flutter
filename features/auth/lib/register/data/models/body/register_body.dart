import 'package:core/core.dart';

class RegisterBody extends Equatable {
  const RegisterBody({
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
