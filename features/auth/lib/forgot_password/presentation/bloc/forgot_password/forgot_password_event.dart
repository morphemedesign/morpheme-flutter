part of 'forgot_password_bloc.dart';

@immutable
abstract class ForgotPasswordEvent extends Equatable {}

class FetchForgotPassword extends ForgotPasswordEvent {
  FetchForgotPassword(
    this.body, {
    this.headers,
    this.extra,
  });

  final ForgotPasswordBody body;
  final Map<String, String>? headers;
  final dynamic extra;

  @override
  List<Object?> get props => [
        body,
        headers,
        extra,
      ];
}
