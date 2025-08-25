import 'data/models/response/forgot_password_response.dart'
    as forgot_password_response;
import 'domain/entities/forgot_password_entity.dart' as forgot_password_entity;

extension ForgotPasswordResponseMapper
    on forgot_password_response.ForgotPasswordResponse {
  forgot_password_entity.ForgotPasswordEntity toEntity() =>
      forgot_password_entity.ForgotPasswordEntity(
        token: token,
      );
}

extension ForgotPasswordEntityMapper
    on forgot_password_entity.ForgotPasswordEntity {
  forgot_password_response.ForgotPasswordResponse toResponse() =>
      forgot_password_response.ForgotPasswordResponse(
        token: token,
      );
}
