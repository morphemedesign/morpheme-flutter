import 'dart:convert';

import 'package:core/core.dart';

class LoginResponse extends Equatable {
  const LoginResponse({
    this.token,
  });

  factory LoginResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return LoginResponse(
      token: map['token'],
    );
  }

  factory LoginResponse.fromJson(String source) =>
      LoginResponse.fromMap(json.decode(source));

  final String? token;

  Map<String, dynamic> toMap() {
    return {
      'token': token,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props => [
        token,
      ];
}
