part of 'register_bloc.dart';

@immutable
abstract class RegisterEvent extends Equatable {}

class FetchRegister extends RegisterEvent {
  FetchRegister(this.body, {this.extra});

  final RegisterBody body;
  final dynamic extra;

  @override
  List<Object?> get props => [body, extra];
}
