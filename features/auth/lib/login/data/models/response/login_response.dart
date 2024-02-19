import 'dart:convert';

import 'package:core/core.dart';

class LoginResponse extends Equatable {
  const LoginResponse({
    required this.token,
  });

  final String? token;

  Map<String, dynamic> toMap() {
    return {
      'token': token,
    };
  }

  factory LoginResponse.fromMap(Map<String, dynamic> map) {
    return LoginResponse(
      token: map['token'],
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginResponse.fromJson(String source) =>
      LoginResponse.fromMap(json.decode(source));

  @override
  List<Object?> get props => [
        token,
      ];
}
