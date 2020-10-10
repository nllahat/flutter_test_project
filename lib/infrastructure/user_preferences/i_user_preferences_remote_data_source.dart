import 'package:my_proj/infrastructure/user_preferences/user_preferences_dto.dart';

abstract class IUserPreferencesRemoteDataSource {
  Future<UserReferencesDto> getUserPreferences();
}
