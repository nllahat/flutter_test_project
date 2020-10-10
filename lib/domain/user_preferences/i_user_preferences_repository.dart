import 'package:dartz/dartz.dart';
import 'package:my_proj/domain/user_preferences/user_preferences.dart';

import 'user_preferences_failure.dart';

abstract class IUserPreferencesRepository {
  Future<Either<UserPreferencesFailure, UserPreferences>> getUserPreferences();

  Future<Either<UserPreferencesFailure, Unit>> create(
      UserPreferences userPreferences);
}
