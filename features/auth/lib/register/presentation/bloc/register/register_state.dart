part of 'register_bloc.dart';

@immutable
abstract class RegisterState extends Equatable {
  bool get isInitial => this is RegisterInitial;
  bool get isLoading => this is RegisterLoading;
  bool get isFailed => this is RegisterFailed;
  bool get isSuccess => this is RegisterSuccess;

  bool get isNotInitial => this is! RegisterInitial;
  bool get isNotLoading => this is! RegisterLoading;
  bool get isNotFailed => this is! RegisterFailed;
  bool get isNotSuccess => this is! RegisterSuccess;

  void when({
    void Function(RegisterInitial state)? onInitial,
    void Function(RegisterLoading state)? onLoading,
    void Function(RegisterFailed state)? onFailed,
    void Function(RegisterSuccess state)? onSuccess,
  }) {
    final state = this;
    if (state is RegisterInitial) {
      onInitial?.call(state);
    } else if (state is RegisterLoading) {
      onLoading?.call(state);
    } else if (state is RegisterFailed) {
      onFailed?.call(state);
    } else if (state is RegisterSuccess) {
      onSuccess?.call(state);
    }
  }

  Widget builder({
    Widget Function(RegisterInitial state)? onInitial,
    Widget Function(RegisterLoading state)? onLoading,
    Widget Function(RegisterFailed state)? onFailed,
    Widget Function(RegisterSuccess state)? onSuccess,
    Widget Function(RegisterState state)? onStateBuilder,
  }) {
    final state = this;
    final defaultWidget = onStateBuilder?.call(this) ?? const SizedBox.shrink();

    if (state is RegisterInitial) {
      return onInitial?.call(state) ?? defaultWidget;
    } else if (state is RegisterLoading) {
      return onLoading?.call(state) ?? defaultWidget;
    } else if (state is RegisterFailed) {
      return onFailed?.call(state) ?? defaultWidget;
    } else if (state is RegisterSuccess) {
      return onSuccess?.call(state) ?? defaultWidget;
    } else {
      return defaultWidget;
    }
  }
}

class RegisterInitial extends RegisterState {
  @override
  List<Object?> get props => [];
}

class RegisterLoading extends RegisterState {
  RegisterLoading(
    this.body,
    this.headers,
    this.extra,
  );

  final RegisterBody body;
  final Map<String, String>? headers;
  final dynamic extra;

  @override
  List<Object?> get props => [
        body,
        headers,
        extra,
      ];
}

class RegisterSuccess extends RegisterState {
  RegisterSuccess(
    this.body,
    this.headers,
    this.data,
    this.extra,
  );

  final RegisterBody body;
  final Map<String, String>? headers;
  final RegisterEntity data;
  final dynamic extra;

  @override
  List<Object?> get props => [
        body,
        headers,
        data,
        extra,
      ];
}

class RegisterFailed extends RegisterState {
  RegisterFailed(
    this.body,
    this.headers,
    this.failure,
    this.extra,
  );

  final RegisterBody body;
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
