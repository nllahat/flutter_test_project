import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_proj/domain/core/failures.dart';
import 'package:my_proj/domain/core/value_validators.dart';

void main() {
  group('validateEmailAddress', () {
    test('should return string value', () {
      // arrange
      final str = 'test@test.com';
      // act
      final result = validateEmailAddress(str);
      // assert
      expect(result, Right(str));
    });

    test('should return ValueFailure', () {
      // arrange
      final str = 'test@test';
      // act
      final result = validateEmailAddress(str);
      // assert
      expect(result, Left(ValueFailure.invalidEmail(failedValue: str)));
    });
  });

  group('validatePassword', () {
    test('should return string value', () {
      // arrange
      final str = '123456';
      // act
      final result = validatePassword(str);
      // assert
      expect(result, Right(str));
    });

    test('should return ValueFailure', () {
      // arrange
      final str = '12345';
      // act
      final result = validatePassword(str);
      // assert
      expect(result, Left(ValueFailure.shortPassword(failedValue: str)));
    });
  });
}
