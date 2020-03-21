import 'package:flutter_test/flutter_test.dart';
import 'package:my_proj/domain/auth/value_objects.dart';
import 'package:my_proj/domain/core/value_objects.dart';

void main() {
  EmailAddress emailAddress;

  setUp(() {
    emailAddress = EmailAddress('test@test.com');
  });

  test(
    'should be a subclass of ValueObject',
    () {
      // assert
      expect(emailAddress, isA<ValueObject<String>>());
    },
  );

  /* test(
    'should call verify email address',
    () {
      // assert
      verify(validateEmailAddress(any));
    },
  ); */
}
