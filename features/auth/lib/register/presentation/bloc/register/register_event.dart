part of 'register_bloc.dart';

@immutable
abstract class RegisterEvent extends Equatable {}

class FetchRegister extends RegisterEvent {
  FetchRegister(
    this.body, {
    this.headers,
    this.extra,
    this.cacheStrategy,
  });

  final RegisterBody body;
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

class CancelRegister extends RegisterEvent {
  CancelRegister({this.extra});

  final dynamic extra;

  @override
  List<Object?> get props => [extra];
}
