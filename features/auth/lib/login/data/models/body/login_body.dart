import 'package:core/core.dart';

class LoginBody extends Equatable {
  const LoginBody({
    this.rawBody,
    this.email,
    this.password,
  });

  final Map<String, dynamic>? rawBody;

  final String? email;
  final String? password;

  Map<String, dynamic> toMap() {
    return {
      if (rawBody?.isNotEmpty ?? false) ...rawBody ?? {},
      if (email != null) 'email': email,
      if (password != null) 'password': password,
    };
  }

  @override
  List<Object?> get props => [
        rawBody,
        email,
        password,
      ];
}
