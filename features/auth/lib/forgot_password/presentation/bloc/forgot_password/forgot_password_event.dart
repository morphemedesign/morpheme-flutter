part of 'forgot_password_bloc.dart';

@immutable
abstract class ForgotPasswordEvent extends Equatable {}

class FetchForgotPassword extends ForgotPasswordEvent {
  FetchForgotPassword(
    this.body, {
    this.headers,
    this.extra,
    this.cacheStrategy,
  });

  final ForgotPasswordBody body;
  final Map<String, String>? headers;
  final dynamic extra;
  final CacheStrategy? cacheStrategy;

  @override
  List<Object?> get props => [
        body,
        headers,
        extra,
        cacheStrategy,
      ];
}

class CancelForgotPassword extends ForgotPasswordEvent {
  CancelForgotPassword({this.extra});

  final dynamic extra;

  @override
  List<Object?> get props => [extra];
}
