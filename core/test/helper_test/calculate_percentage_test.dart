import 'package:core/src/helper/src/calculate_percentage.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Calculate percentage test', () {
    final result = calculatePercentage(40, 400);
    expect(result, 160);
  });
}
