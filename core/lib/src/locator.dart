import 'package:core/src/environment.dart';
import 'package:dependency_manager/dependency_manager.dart'
    show FlutterSecureStorage;
import 'package:flutter/foundation.dart';
import 'package:morpheme_library/morpheme_library.dart';

import 'global_variable.dart';

void setupLocatorFeatureCore() {
  locator.registerLazySingleton(() => const FlutterSecureStorage());
  // locator.registerLazySingleton(() => FirebaseRemoteConfig.instance);
  if (!kIsWeb) {
    locator.registerLazySingleton(
      () => MorphemeInspector(
        showInspectorOnShake: Environment.isNotProd,
        showNotification: Environment.isNotProd,
        saveInspectorToLocal: Environment.isNotProd,
      ),
    );
  }
  locator.registerLazySingleton(
    () => MorphemeHttp(
      timeout: 30000,
      showLog: false,
      morphemeInspector: kIsWeb ? null : locator(),
      // authTokenOption: AuthTokenOption(
      //   typeHeader: 'Authorization',
      //   prefixHeader: 'Bearer',
      //   getToken: () => FlutterSecureStorageHelper.getToken(),
      //   authCondition: (request, response) =>
      //       request.url == MorphemeEndpoints.login,
      //   onAuthTokenResponse: (response) async {
      //     final map = jsonDecode(response.body);
      //     await FlutterSecureStorageHelper.saveToken(map['token']);
      //     await FlutterSecureStorageHelper.saveRefreshToken(
      //       map['refresh_token'],
      //     );
      //   },
      //   clearCondition: (request, response) =>
      //       request.url == MorphemeEndpoints.logout,
      //   onClearToken: () => FlutterSecureStorageHelper.removeToken(),
      //   excludeEndpointUsageToken: [
      //     MorphemeEndpoints.login,
      //     MorphemeEndpoints.register,
      //   ],
      // ),
      // refreshTokenOption: RefreshTokenOption(
      //   method: RefreshTokenMethod.post,
      //   url: MorphemeEndpoints.refreshToken,
      //   condition: (request, response) =>
      //       request.url != MorphemeEndpoints.login && response.statusCode == 401,
      //   getBody: () async {
      //     final refreshToken =
      //         await FlutterSecureStorageHelper.getRefreshToken();

      //     return {
      //       'refresh_token': refreshToken ?? '',
      //     };
      //   },
      //   onResponse: (response) async {
      //     final map = jsonDecode(response.body);
      //     await FlutterSecureStorageHelper.saveRefreshToken(map['token']);
      //   },
      // ),
    ),
  );
}
