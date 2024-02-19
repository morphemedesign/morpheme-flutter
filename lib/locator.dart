//
// Generated file. Edit just you manually add or delete a feature.
//

import 'package:auth/locator.dart';
import 'package:core/core.dart';
import 'package:home/locator.dart';
import 'package:news/locator.dart';
import 'package:onboarding/locator.dart';
import 'package:profile/locator.dart';
import 'package:selling/locator.dart';

import 'routes/routes.dart';

void setupLocator() {
  locator.registerLazySingleton(() => Routes.router);
  setupLocatorFeatureCore();
  setupLocatorFeatureAuth();
  setupLocatorFeatureOnboarding();
  setupLocatorFeatureHome();
  setupLocatorFeatureNews();
  setupLocatorFeatureProfile();
  setupLocatorFeatureSelling();
}
