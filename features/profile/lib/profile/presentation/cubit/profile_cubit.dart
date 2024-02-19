import 'package:core/core.dart';
import 'package:flutter/material.dart';

part 'profile_state.dart';

class ProfileCubit extends MorphemeCubit<ProfileStateCubit> {
  ProfileCubit() : super(ProfileStateCubit());

  @override
  void initState(BuildContext context) async {}

  @override
  void initAfterFirstLayout(BuildContext context) {}

  @override
  List<BlocProvider> blocProviders(BuildContext context) => [];

  @override
  List<BlocListener> blocListeners(BuildContext context) => [];

  @override
  void dispose() {}
}
