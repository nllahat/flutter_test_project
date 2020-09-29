import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/user/entities/user.dart';
import '../../domain/user/entities/user_failure.dart';
import '../../domain/user/repos/i_user_repository.dart';
import 'user_dto.dart';

@prod
@injectable
@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  final CollectionReference _usersCollectionReference =
      FirebaseFirestore.instance.collection("users");

  UserRepository();

  @override
  Future<Either<UserFailure, Unit>> create(User user) async {
    try {
      final userDto = UserDto.fromDomain(user);

      await _usersCollectionReference.doc(userDto.id).set(userDto.toJson());

      return right(unit);
    } catch (e) {
      return left(UserFailure.unexpected());
    }
  }

  @override
  Future<Either<UserFailure, User>> getUser(String id) async {
    try {
      DocumentReference userRef = this._usersCollectionReference.doc(id);
      DocumentSnapshot userSnapshot = await userRef.get();

      if (!userSnapshot.exists) {
        return left(UserFailure.notFound());
      }

      UserDto dto = UserDto.fromFirestore(userSnapshot);

      return right(dto.toDomain());
    } catch (e) {
      return left(UserFailure.unexpected());
    }
  }

  @override
  Future<Either<UserFailure, Unit>> update(User user) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Stream<Either<UserFailure, User>> watchUser(String id) {
    DocumentReference userRef = this._usersCollectionReference.doc(id);
    return userRef.snapshots().map((snapshot) =>
        right<UserFailure, User>(UserDto.fromFirestore(snapshot).toDomain()));
  }
}
