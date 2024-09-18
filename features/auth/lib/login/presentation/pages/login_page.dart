import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../../../shared/widget/widget.dart';
import '../cubit/login_cubit.dart';
import '../widgets/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with MorphemeStatePage<LoginPage, LoginCubit> {
  @override
  LoginCubit setCubit() => locator();

  @override
  Widget buildWidget(BuildContext context) {
    return Scaffold(
      key: const ValueKey(ConstantDataTesId.pageLogin),
      appBar: AppBar(title: Text(context.s.login)),
      body: SingleChildScrollView(
        key: const ValueKey(ConstantDataTesId.scrollLogin),
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ThirdLoginButton(
              onFacebookPressed: cubit.onLoginWithFacebookPressed,
              onGooglePressed: cubit.onLoginWithGooglePressed,
              onApplePressed: cubit.onLoginWithApplePressed,
            ),
            const MorphemeSpacing.vertical36(),
            const DividerOr(),
            const MorphemeSpacing.vertical36(),
            const LoginWithEmail(),
            const MorphemeSpacing.vertical32(),
            const NewRegister(),
          ],
        ),
      ),
    );
  }
}
