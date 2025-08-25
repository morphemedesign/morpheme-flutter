import 'dart:convert';

import 'package:core/core.dart';

class ForgotPasswordResponse extends Equatable {
  const ForgotPasswordResponse({
    this.token,
  });

  factory ForgotPasswordResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ForgotPasswordResponse(
      token: map['token'],
    );
  }

  factory ForgotPasswordResponse.fromJson(String source) =>
      ForgotPasswordResponse.fromMap(json.decode(source));

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
