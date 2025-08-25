part of 'login_bloc.dart';

@immutable
abstract class LoginState extends Equatable {
  bool get isInitial => this is LoginInitial;
  bool get isLoading => this is LoginLoading;
  bool get isFailed => this is LoginFailed;
  bool get isSuccess => this is LoginSuccess;
  bool get isCanceled => this is LoginCanceled;

  bool get isNotInitial => this is! LoginInitial;
  bool get isNotLoading => this is! LoginLoading;
  bool get isNotFailed => this is! LoginFailed;
  bool get isNotSuccess => this is! LoginSuccess;
  bool get isNotCanceled => this is! LoginCanceled;

  void when({
    void Function(LoginInitial state)? onInitial,
    void Function(LoginLoading state)? onLoading,
    void Function(LoginFailed state)? onFailed,
    void Function(LoginSuccess state)? onSuccess,
    void Function(LoginCanceled state)? onCanceled,
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
    } else if (state is LoginCanceled) {
      onCanceled?.call(state);
    }
  }

  Widget builder({
    Widget Function(LoginInitial state)? onInitial,
    Widget Function(LoginLoading state)? onLoading,
    Widget Function(LoginFailed state)? onFailed,
    Widget Function(LoginSuccess state)? onSuccess,
    Widget Function(LoginCanceled state)? onCanceled,
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
    } else if (state is LoginCanceled) {
      return onCanceled?.call(state) ?? defaultWidget;
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
  LoginLoading(
    this.body,
    this.headers,
    this.extra,
  );

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

class LoginFailed extends LoginState {
  LoginFailed(
    this.body,
    this.headers,
    this.failure,
    this.extra,
  );

  final LoginBody body;
  final Map<String, String>? headers;
  final MorphemeFailure failure;
  final dynamic extra;

  @override
  List<Object?> get props => [
        body,
        headers,
        failure,
        extra,
      ];
}

class LoginCanceled extends LoginState {
  LoginCanceled(this.extra);

  final dynamic extra;

  @override
  List<Object?> get props => [extra];
}

class LoginSuccess extends LoginState {
  LoginSuccess(
    this.body,
    this.headers,
    this.data,
    this.extra,
  );

  final LoginBody body;
  final Map<String, String>? headers;
  final LoginEntity data;
  final dynamic extra;

  @override
  List<Object?> get props => [
        body,
        headers,
        data,
        extra,
      ];
}
