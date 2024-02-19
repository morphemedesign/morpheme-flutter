import 'package:core/core.dart';
import 'package:flutter/material.dart';

part 'news_state.dart';

class NewsCubit extends MorphemeCubit<NewsStateCubit> {
  NewsCubit() : super(NewsStateCubit());

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
