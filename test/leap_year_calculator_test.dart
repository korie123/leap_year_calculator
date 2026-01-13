import 'package:flutter_test/flutter_test.dart';
import 'package:test1/leap_year_calculator.dart';

void main () {
  final calculator = LeapYearCalculator();
  final map = {
    2024: true,
    2026: false,
    1900: false,
    1: false,
    400: true,
  };

  for (int year in map.keys) {
    final result = map[year];
    test('$year $result', () {
      final actual = calculator.isLeapYear(year);
      expect(result, actual);
    });
  }
}



