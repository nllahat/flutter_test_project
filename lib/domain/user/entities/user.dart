import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_proj/domain/auth/value_objects.dart';
import 'package:my_proj/domain/core/value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @required UniqueId id,
    @required EmailAddress emailAddress,
    @required String fullName,
    bool finishedOnboarding,
  }) = _User;

  factory User.empty() => User(
        id: UniqueId.empty(),
        emailAddress: EmailAddress(''),
        fullName: '',
        finishedOnboarding: false,
      );
}
