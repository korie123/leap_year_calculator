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

//  test('2024 is a leap year', () {
//    final result = calculator.isLeapYear(2024);
//    expect(true, result);
//  });
//
//
//  test('2026 is not a leap year', () {
//    final result = calculator.isLeapYear(2026);
//    expect(false, result);
//  });
//
//
//  test('1900 is not a leap year', () {
//    final result = calculator.isLeapYear(1900);
//    expect(false, result);
//  });
//
//
//  test('1 is not a leap year', () {
//    final result = calculator.isLeapYear(1);
//    expect(false, result);
//  });
//
//
//  test('400 is a leap year', () {
//    final result = calculator.isLeapYear(400);
//    expect(true, result);
//  });
//
//
}



