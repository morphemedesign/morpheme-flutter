part of 'forgot_password_bloc.dart';

@immutable
abstract class ForgotPasswordEvent extends Equatable {}

class FetchForgotPassword extends ForgotPasswordEvent {
  FetchForgotPassword(this.body, {this.extra});

  final ForgotPasswordBody body;
  final dynamic extra;

  @override
  List<Object?> get props => [body, extra];
}
