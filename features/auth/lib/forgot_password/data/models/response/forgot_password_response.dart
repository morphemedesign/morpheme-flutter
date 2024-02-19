import 'dart:convert';

import 'package:core/core.dart';

class ForgotPasswordResponse extends Equatable {
  const ForgotPasswordResponse();

  Map<String, dynamic> toMap() {
    return {};
  }

  factory ForgotPasswordResponse.fromMap(Map<String, dynamic> map) {
    return const ForgotPasswordResponse();
  }

  String toJson() => json.encode(toMap());

  factory ForgotPasswordResponse.fromJson(String source) =>
      ForgotPasswordResponse.fromMap(json.decode(source));

  @override
  List<Object?> get props => [];
}
