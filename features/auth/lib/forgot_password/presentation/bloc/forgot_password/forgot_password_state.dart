part of 'forgot_password_bloc.dart';

@immutable
abstract class ForgotPasswordState extends Equatable {
  bool get isInitial => this is ForgotPasswordInitial;
  bool get isLoading => this is ForgotPasswordLoading;
  bool get isFailed => this is ForgotPasswordFailed;
  bool get isSuccess => this is ForgotPasswordSuccess;

  bool get isNotInitial => this is! ForgotPasswordInitial;
  bool get isNotLoading => this is! ForgotPasswordLoading;
  bool get isNotFailed => this is! ForgotPasswordFailed;
  bool get isNotSuccess => this is! ForgotPasswordSuccess;

  void when({
    void Function(ForgotPasswordInitial state)? onInitial,
    void Function(ForgotPasswordLoading state)? onLoading,
    void Function(ForgotPasswordFailed state)? onFailed,
    void Function(ForgotPasswordSuccess state)? onSuccess,
  }) {
    final state = this;
    if (state is ForgotPasswordInitial) {
      onInitial?.call(state);
    } else if (state is ForgotPasswordLoading) {
      onLoading?.call(state);
    } else if (state is ForgotPasswordFailed) {
      onFailed?.call(state);
    } else if (state is ForgotPasswordSuccess) {
      onSuccess?.call(state);
    }
  }

  Widget builder({
    Widget Function(ForgotPasswordInitial state)? onInitial,
    Widget Function(ForgotPasswordLoading state)? onLoading,
    Widget Function(ForgotPasswordFailed state)? onFailed,
    Widget Function(ForgotPasswordSuccess state)? onSuccess,
    Widget Function(ForgotPasswordState state)? onStateBuilder,
  }) {
    final state = this;
    final defaultWidget = onStateBuilder?.call(this) ?? const SizedBox.shrink();

    if (state is ForgotPasswordInitial) {
      return onInitial?.call(state) ?? defaultWidget;
    } else if (state is ForgotPasswordLoading) {
      return onLoading?.call(state) ?? defaultWidget;
    } else if (state is ForgotPasswordFailed) {
      return onFailed?.call(state) ?? defaultWidget;
    } else if (state is ForgotPasswordSuccess) {
      return onSuccess?.call(state) ?? defaultWidget;
    } else {
      return defaultWidget;
    }
  }
}

class ForgotPasswordInitial extends ForgotPasswordState {
  @override
  List<Object?> get props => [];
}

class ForgotPasswordLoading extends ForgotPasswordState {
  ForgotPasswordLoading(
    this.body,
    this.headers,
    this.extra,
  );

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

class ForgotPasswordSuccess extends ForgotPasswordState {
  ForgotPasswordSuccess(
    this.body,
    this.headers,
    this.data,
    this.extra,
  );

  final ForgotPasswordBody body;
  final Map<String, String>? headers;
  final ForgotPasswordEntity data;
  final dynamic extra;

  @override
  List<Object?> get props => [
        body,
        headers,
        data,
        extra,
      ];
}

class ForgotPasswordFailed extends ForgotPasswordState {
  ForgotPasswordFailed(
    this.body,
    this.headers,
    this.failure,
    this.extra,
  );

  final ForgotPasswordBody body;
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
