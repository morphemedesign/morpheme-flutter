import 'package:dependency_manager/dependency_manager.dart'
    show FlutterSecureStorage;

import '../../global_variable.dart';

abstract final class KeyFlutterSecureStorage {
  static const String keyToken = 'token';
  static const String keyRefreshToken = 'refreshToken';
}

abstract final class FlutterSecureStorageHelper {
  static final _fss = locator<FlutterSecureStorage>();

  static Future<String?> getToken() =>
      _fss.read(key: KeyFlutterSecureStorage.keyToken);
  static Future<void> saveToken(String? token) =>
      _fss.write(key: KeyFlutterSecureStorage.keyToken, value: token);
  static Future<void> removeToken() =>
      _fss.delete(key: KeyFlutterSecureStorage.keyToken);

  static Future<String?> getRefreshToken() =>
      _fss.read(key: KeyFlutterSecureStorage.keyRefreshToken);
  static Future<void> saveRefreshToken(String? refreshToken) => _fss.write(
      key: KeyFlutterSecureStorage.keyRefreshToken, value: refreshToken);
  static Future<void> removeRefreshToken() =>
      _fss.delete(key: KeyFlutterSecureStorage.keyRefreshToken);
}
