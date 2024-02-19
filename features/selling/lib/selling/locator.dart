import 'package:core/core.dart';

import 'presentation/cubit/selling_cubit.dart';

void setupLocatorSelling() {
  // *Cubit
  locator.registerFactory(() => SellingCubit());
}
