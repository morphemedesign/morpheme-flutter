import 'package:core/core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../cubit/register_cubit.dart';

class JoinedUsBefore extends StatelessWidget {
  const JoinedUsBefore({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: context.s.joinedUsBefore,
        children: [
          TextSpan(
            text: ' ${context.s.login}',
            style: context.labelLarge?.apply(
              color: context.color.primary,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap =
                  () => context.read<RegisterCubit>().onLoginPressed(context),
          ),
        ],
      ),
      key: const ValueKey('joinedUsBefore'),
      textAlign: TextAlign.center,
      style: context.labelLarge?.apply(color: context.color.grey),
    );
  }
}
