import 'package:core/core.dart';

import '../models/body/forgot_password_body.dart';
import '../models/response/forgot_password_response.dart';

abstract class ForgotPasswordRemoteDataSource {
  Future<ForgotPasswordResponse> forgotPassword(ForgotPasswordBody body);
}

class ForgotPasswordRemoteDataSourceImpl
    implements ForgotPasswordRemoteDataSource {
  ForgotPasswordRemoteDataSourceImpl({required this.http});

  final MorphemeHttp http;

  @override
  Future<ForgotPasswordResponse> forgotPassword(ForgotPasswordBody body) async {
    final response = await http.get(
      MorphemeEndpoints.forgotPassword,
      body: body.toMap(),
      cacheStrategy: JustCacheStrategy(
        ttlValue: const Duration(minutes: 120),
        keepExpiredCache: true,
      ),
    );
    return ForgotPasswordResponse.fromJson(response.body);
  }
}
