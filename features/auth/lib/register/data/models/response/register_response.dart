import 'dart:convert';

import 'package:core/core.dart';

class RegisterResponse extends Equatable {
  const RegisterResponse({
    this.id,
    this.token,
  });

  factory RegisterResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegisterResponse(
      id: int.tryParse(map['id']?.toString() ?? ''),
      token: map['token'],
    );
  }

  factory RegisterResponse.fromJson(String source) =>
      RegisterResponse.fromMap(json.decode(source));

  final int? id;
  final String? token;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'token': token,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props => [
        id,
        token,
      ];
}
