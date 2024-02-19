import 'data/models/response/register_response.dart' as register_response;
import 'domain/entities/register_entity.dart' as register_entity;

extension RegisterResponseMapper on register_response.RegisterResponse {
  register_entity.RegisterEntity toEntity() => register_entity.RegisterEntity(
        id: id,
        token: token,
      );
}

extension RegisterEntityMapper on register_entity.RegisterEntity {
  register_response.RegisterResponse toResponse() =>
      register_response.RegisterResponse(
        id: id,
        token: token,
      );
}
