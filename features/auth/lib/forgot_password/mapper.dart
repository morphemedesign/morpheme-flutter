import 'data/models/response/forgot_password_response.dart'
    as forgot_password_response;
import 'domain/entities/forgot_password_entity.dart' as forgot_password_entity;

extension ForgotPasswordResponseMapper
    on forgot_password_response.ForgotPasswordResponse {
  forgot_password_entity.ForgotPasswordEntity toEntity() =>
      const forgot_password_entity.ForgotPasswordEntity();
}

extension ForgotPasswordEntityMapper
    on forgot_password_entity.ForgotPasswordEntity {
  forgot_password_response.ForgotPasswordResponse toResponse() =>
      const forgot_password_response.ForgotPasswordResponse();
}
