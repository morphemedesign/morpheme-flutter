import 'package:auth/register/presentation/widgets/joined_us_before.dart';
import 'package:auth/register/presentation/widgets/sign_up_with_email.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../../../shared/widget/widget.dart';
import '../cubit/register_cubit.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>
    with MorphemeStatePage<RegisterPage, RegisterCubit> {
  @override
  RegisterCubit setCubit() => locator();

  @override
  Widget buildWidget(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.s.register)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SignUpWithEmail(),
          const MorphemeSpacing.vertical36(),
          const DividerOr(),
          const MorphemeSpacing.vertical36(),
          ThirdLoginButton(
            onFacebookPressed: cubit.onLoginWithFacebookPressed,
            onGooglePressed: cubit.onLoginWithGooglePressed,
            onApplePressed: cubit.onLoginWithApplePressed,
          ),
          const MorphemeSpacing.vertical32(),
          const JoinedUsBefore(),
        ],
      ),
    );
  }
}
