part of 'login_bloc.dart';

@immutable
abstract class LoginState extends Equatable {
  void when({
    void Function(LoginInitial state)? onInitial,
    void Function(LoginLoading state)? onLoading,
    void Function(LoginFailed state)? onFailed,
    void Function(LoginSuccess state)? onSuccess,
  }) {
    final state = this;
    if (state is LoginInitial) {
      onInitial?.call(state);
    } else if (state is LoginLoading) {
      onLoading?.call(state);
    } else if (state is LoginFailed) {
      onFailed?.call(state);
    } else if (state is LoginSuccess) {
      onSuccess?.call(state);
    }
  }

  Widget builder({
    Widget Function(LoginInitial state)? onInitial,
    Widget Function(LoginLoading state)? onLoading,
    Widget Function(LoginFailed state)? onFailed,
    Widget Function(LoginSuccess state)? onSuccess,
    Widget Function(LoginState state)? onStateBuilder,
  }) {
    final state = this;
    final defaultWidget = onStateBuilder?.call(this) ?? const SizedBox.shrink();

    if (state is LoginInitial) {
      return onInitial?.call(state) ?? defaultWidget;
    } else if (state is LoginLoading) {
      return onLoading?.call(state) ?? defaultWidget;
    } else if (state is LoginFailed) {
      return onFailed?.call(state) ?? defaultWidget;
    } else if (state is LoginSuccess) {
      return onSuccess?.call(state) ?? defaultWidget;
    } else {
      return defaultWidget;
    }
  }
}

class LoginInitial extends LoginState {
  @override
  List<Object?> get props => [];
}

class LoginLoading extends LoginState {
  LoginLoading(this.body, this.extra);

  final LoginBody body;
  final dynamic extra;

  @override
  List<Object?> get props => [body, extra];
}

class LoginSuccess extends LoginState {
  LoginSuccess(this.body, this.data, this.extra);

  final LoginBody body;
  final LoginEntity data;
  final dynamic extra;

  @override
  List<Object?> get props => [body, data, extra];
}

class LoginFailed extends LoginState {
  LoginFailed(this.body, this.failure, this.extra);

  final LoginBody body;
  final MorphemeFailure failure;
  final dynamic extra;

  @override
  List<Object?> get props => [body, failure, extra];
}
