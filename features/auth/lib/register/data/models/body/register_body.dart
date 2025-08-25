import 'package:core/core.dart';

class RegisterBody extends Equatable {
  const RegisterBody({
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
