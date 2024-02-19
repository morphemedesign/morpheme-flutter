import 'package:auth/login/presentation/cubit/login_cubit.dart';
import 'package:core/core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class NewRegister extends StatelessWidget {
  const NewRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: context.s.newAccount,
        children: [
          TextSpan(
            text: ' ${context.s.register}',
            style: context.labelLarge?.apply(
              color: context.color.primary,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap =
                  () => context.read<LoginCubit>().onRegisterPressed(context),
          ),
        ],
      ),
      key: const ValueKey(MorphemeDataTesId.newAccountRegister),
      textAlign: TextAlign.center,
      style: context.labelLarge?.apply(color: context.color.grey),
    );
  }
}
