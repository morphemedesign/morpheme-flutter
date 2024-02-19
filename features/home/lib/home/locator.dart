import 'package:core/core.dart';

import 'presentation/cubit/home_cubit.dart';

void setupLocatorHome() {
  // *Cubit
  locator.registerFactory(() => HomeCubit());
}
