abstract final class Environment {
  static const bool isDev = String.fromEnvironment('FLAVOR') == 'dev';
  static const bool isNotDev = String.fromEnvironment('FLAVOR') != 'dev';
  static const bool isStag = String.fromEnvironment('FLAVOR') == 'stag';
  static const bool isNotStag = String.fromEnvironment('FLAVOR') != 'stag';
  static const bool isProd = String.fromEnvironment('FLAVOR') == 'prod';
  static const bool isNotProd = String.fromEnvironment('FLAVOR') != 'prod';

  static const String appName = String.fromEnvironment('APP_NAME');
  static const String androidApplicationId =
      String.fromEnvironment('ANDROID_APPLICATION_ID');
  static const String iosApplicationId =
      String.fromEnvironment('IOS_APPLICATION_ID');

  static const bool isIntegrationTest =
      bool.fromEnvironment('INTEGRATION_TEST');
}
