import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:injectable/injectable.dart';
import 'package:my_proj/domain/auth/user.dart';
import 'package:my_proj/domain/auth/value_objects.dart';
import 'package:my_proj/domain/core/value_objects.dart';

@lazySingleton
class FirebaseUserMapper {
  User toDomain(auth.User _) {
    return _ == null
        ? null
        : User(
            id: UniqueId.fromFirebaseId(_.uid),
            name: StringSingleLine(_.displayName ?? _.email.split('@').first),
            emailAddress: EmailAddress(_.email),
          );
  }
}
