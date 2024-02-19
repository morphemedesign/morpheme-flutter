import 'package:core/core.dart';

import 'presentation/cubit/news_cubit.dart';

void setupLocatorNews() {
  // *Cubit
  locator.registerFactory(() => NewsCubit());
}
