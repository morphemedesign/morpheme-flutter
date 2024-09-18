import 'dart:convert';

import 'package:core/core.dart';

class ForgotPasswordResponse extends Equatable {
  const ForgotPasswordResponse();

  factory ForgotPasswordResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return const ForgotPasswordResponse();
  }

  factory ForgotPasswordResponse.fromJson(String source) =>
      ForgotPasswordResponse.fromMap(json.decode(source));

  Map<String, dynamic> toMap() {
    return {};
  }

  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props => [];
}
