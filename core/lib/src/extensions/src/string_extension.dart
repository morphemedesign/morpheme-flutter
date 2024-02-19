import 'dart:convert';

extension StringExtension on String {
  String withQueryParameters(Map<String, dynamic> queryParameters) {
    if (queryParameters.isEmpty) {
      return this;
    }
    final uri = Uri.parse(this);
    final queryParametersAll = Map<String, String>.from(uri.queryParameters);
    queryParametersAll.addAll(queryParameters.map((key, value) {
      if (value is Map) {
        return MapEntry(key, jsonEncode(value));
      } else {
        return MapEntry(key, value.toString());
      }
    }));
    return uri.replace(queryParameters: queryParametersAll).toString();
  }

  String toInitialAvatarUrl() =>
      'https://ui-avatars.com/api/?background=F2F2F2&color=EB2139&name=$this&bold=true';
}
