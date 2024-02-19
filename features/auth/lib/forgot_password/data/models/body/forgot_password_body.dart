import 'package:core/core.dart';

class ForgotPasswordBody extends Equatable {
  const ForgotPasswordBody({
    this.delay,
  });

  final int? delay;

  Map<String, dynamic> toMap() {
    return {
      if (delay != null) 'delay': delay,
    };
  }

  @override
  List<Object?> get props => [
        delay,
      ];
}
