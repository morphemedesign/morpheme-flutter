part of 'login_bloc.dart';

@immutable
abstract class LoginEvent extends Equatable {}

class FetchLogin extends LoginEvent {
  FetchLogin(
    this.body, {
    this.headers,
    this.extra,
    this.cacheStrategy,
  });

  final LoginBody body;
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

class CancelLogin extends LoginEvent {
  CancelLogin({this.extra});

  final dynamic extra;

  @override
  List<Object?> get props => [extra];
}
