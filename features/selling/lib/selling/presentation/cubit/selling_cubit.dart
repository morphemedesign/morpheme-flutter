import 'package:core/core.dart';
import 'package:flutter/material.dart';

part 'selling_state.dart';

class SellingCubit extends MorphemeCubit<SellingStateCubit> {
  SellingCubit() : super(SellingStateCubit());

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

  void onBackWithResult(BuildContext context) {
    context.popWithResult(true);
  }
}
