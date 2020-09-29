import 'package:dartz/dartz.dart';

import '../entities/user.dart';
import '../entities/user_failure.dart';

abstract class IUserRepository {
  Stream<Either<UserFailure, User>> watchUser(String id);
  Future<Either<UserFailure, User>> getUser(String id);
  Future<Either<UserFailure, Unit>> create(User user);
  Future<Either<UserFailure, Unit>> update(User user);
}
