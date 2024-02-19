import 'package:core/core.dart';
import 'package:flutter/material.dart';

part 'home_state.dart';

class HomeCubit extends MorphemeCubit<HomeStateCubit> {
  HomeCubit() : super(HomeStateCubit());

  @override
  void initState(BuildContext context) {}

  @override
  void initAfterFirstLayout(BuildContext context) {}

  @override
  List<BlocProvider> blocProviders(BuildContext context) => [];

  @override
  List<BlocListener> blocListeners(BuildContext context) => [];

  @override
  void dispose() {}

  void onAddPressed(BuildContext context) {
    context.goToSelling(onReturn: (result) {
      if (result != null) {
        context.showSnackBar(
          MorphemeSnackBar.success(
              context: context, message: context.s.selling),
        );
      }
    });
  }
}
