import 'package:core/core.dart';

import '../models/body/register_body.dart';
import '../models/response/register_response.dart';

abstract class RegisterRemoteDataSource {
  Future<RegisterResponse> register(RegisterBody body);
}

class RegisterRemoteDataSourceImpl implements RegisterRemoteDataSource {
  RegisterRemoteDataSourceImpl({required this.http});

  final MorphemeHttp http;

  @override
  Future<RegisterResponse> register(RegisterBody body) async {
    final response = await http.post(
      MorphemeEndpoints.register,
      body: body.toMap(),
      cacheStrategy: CacheOrAsyncStrategy(
        ttlValue: const Duration(minutes: 60),
      ),
    );
    return RegisterResponse.fromJson(response.body);
  }
}
