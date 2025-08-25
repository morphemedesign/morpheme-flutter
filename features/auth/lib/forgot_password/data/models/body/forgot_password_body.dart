import 'package:core/core.dart';

class ForgotPasswordBody extends Equatable {
  const ForgotPasswordBody({
    this.rawBody,
    this.delay,
  });

  final Map<String, dynamic>? rawBody;

  final int? delay;

  Map<String, dynamic> toMap() {
    return {
      if (rawBody?.isNotEmpty ?? false) ...rawBody ?? {},
      if (delay != null) 'delay': delay,
    };
  }

  @override
  List<Object?> get props => [
        rawBody,
        delay,
      ];
}
