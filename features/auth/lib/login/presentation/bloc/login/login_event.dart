part of 'login_bloc.dart';

@immutable
abstract class LoginEvent extends Equatable {}

class FetchLogin extends LoginEvent {
  FetchLogin(this.body, {this.extra});

  final LoginBody body;
  final dynamic extra;

  @override
  List<Object?> get props => [body, extra];
}
