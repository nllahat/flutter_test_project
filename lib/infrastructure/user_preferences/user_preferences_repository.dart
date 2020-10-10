import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:my_proj/domain/leagues/i_leagues_repository.dart';
import 'package:my_proj/domain/teams/i_teams_repository.dart';
import 'package:my_proj/domain/user_preferences/i_user_preferences_repository.dart';
import 'package:my_proj/domain/user_preferences/user_preferences.dart';
import 'package:my_proj/domain/user_preferences/user_preferences_failure.dart';
import 'package:my_proj/infrastructure/core/firestore_helpers.dart';
import 'package:my_proj/infrastructure/user_preferences/user_preferences_dto.dart';

import '../core/exceptions.dart';
import 'user_preferences_remote_data_source.dart';

@prod
@LazySingleton(as: IUserPreferencesRepository)
class UserPreferencesRepository implements IUserPreferencesRepository {
  final ITeamsRepository _teamsRepository;
  final ILeaguesRepository _leaguesRepository;
  final UserPreferencesRemoteDataSource _remoteDataSource;
  final FirebaseFirestore _firestore;

  UserPreferencesRepository(this._remoteDataSource, this._firestore,
      this._teamsRepository, this._leaguesRepository);

  @override
  Future<Either<UserPreferencesFailure, UserPreferences>>
      getUserPreferences() async {
    try {
      final result = await this._remoteDataSource.getUserPreferences();

      return Right(await result.toDomain(
          this._leaguesRepository, this._teamsRepository));
    } on ServerException {
      return Left(UserPreferencesFailure.unexpected());
    }
  }

  @override
  Future<Either<UserPreferencesFailure, Unit>> create(
      UserPreferences userPreferences) async {
    try {
      final userDoc = await _firestore.userDocument();
      final userPreferencesDto = UserReferencesDto.fromDomain(userPreferences);

      await userDoc.userPreferencesCollection
          .doc(userPreferencesDto.id)
          .set(userPreferencesDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const UserPreferencesFailure.insufficientPermissions());
      } else {
        return left(const UserPreferencesFailure.unexpected());
      }
    }
  }
}
