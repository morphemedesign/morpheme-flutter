import 'package:core/core.dart';

class ForgotPasswordEntity extends Equatable {
  const ForgotPasswordEntity({
    this.token,
  });

  final String? token;

  ForgotPasswordEntity copyWith({
    String? token,
  }) {
    return ForgotPasswordEntity(
      token: token ?? this.token,
    );
  }

  @override
  List<Object?> get props => [
        token,
      ];
}
