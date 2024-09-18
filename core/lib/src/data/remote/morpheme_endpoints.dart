abstract class MorphemeEndpoints {
  static Uri _createUriBaseUrl(String path) => Uri.parse(
        const String.fromEnvironment('BASE_URL') + path,
      );

  static Uri login = _createUriBaseUrl('/login');
  static Uri register = _createUriBaseUrl('/register');
  static Uri forgotPassword = _createUriBaseUrl('/forgot_password');
}
