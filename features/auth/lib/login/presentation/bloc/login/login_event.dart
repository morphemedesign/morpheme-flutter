part of 'login_bloc.dart';

@immutable
abstract class LoginEvent extends Equatable {}

class FetchLogin extends LoginEvent {
  FetchLogin(
    this.body, {
    this.headers,
    this.extra,
  });

  final LoginBody body;
  final Map<String, String>? headers;
  final dynamic extra;

  @override
  List<Object?> get props => [
        body,
        headers,
        extra,
      ];
}
