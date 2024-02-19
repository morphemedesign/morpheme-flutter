import 'dart:convert';

import 'package:core/src/helper/src/read_json_file.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Calculate percentage test', () {
    final map = {'status': true, 'data': "purpose to test"};

    final jsonString = readJsonFile('test/json/read_json_file.json');

    final toMap = json.decode(jsonString);

    expect(toMap, map);
  });
}
