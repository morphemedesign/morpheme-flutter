import 'package:core/core.dart';
import 'package:flutter/material.dart';

import '../cubit/profile_cubit.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with MorphemeStatePage<ProfilePage, ProfileCubit> {
  @override
  ProfileCubit setCubit() => locator<ProfileCubit>();

  @override
  Widget buildWidget(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.s.profile)),
      body: Center(
        child: MorphemeText.titleLarge(context.s.profile),
      ),
    );
  }
}
