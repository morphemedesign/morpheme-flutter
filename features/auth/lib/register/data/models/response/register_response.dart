import 'dart:convert';

import 'package:core/core.dart';

class RegisterResponse extends Equatable {
  const RegisterResponse({
    required this.id,
    required this.token,
  });

  final int? id;
  final String? token;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'token': token,
    };
  }

  factory RegisterResponse.fromMap(Map<String, dynamic> map) {
    return RegisterResponse(
      id: int.tryParse(map['id']?.toString() ?? ''),
      token: map['token'],
    );
  }

  String toJson() => json.encode(toMap());

  factory RegisterResponse.fromJson(String source) =>
      RegisterResponse.fromMap(json.decode(source));

  @override
  List<Object?> get props => [
        id,
        token,
      ];
}
