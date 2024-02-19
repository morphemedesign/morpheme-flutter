import 'package:core/core.dart';

import 'presentation/cubit/profile_cubit.dart';

void setupLocatorProfile() {
  // *Cubit
  locator.registerFactory(() => ProfileCubit());
}
