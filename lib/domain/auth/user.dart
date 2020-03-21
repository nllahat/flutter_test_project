import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:my_proj/domain/auth/value_objects.dart';
import 'package:my_proj/domain/core/value_objects.dart';

class User extends Equatable {
  final UniqueId id;
  final StringSingleLine name;
  final EmailAddress emailAddress;

  const User(
      {@required this.id, @required this.name, @required this.emailAddress});

  @override
  List<Object> get props => [id, name, emailAddress];
}
