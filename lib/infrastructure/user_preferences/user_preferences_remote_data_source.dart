import 'package:injectable/injectable.dart';
import 'package:my_proj/infrastructure/user_preferences/user_preferences_dto.dart';

import 'i_user_preferences_remote_data_source.dart';

@injectable
@LazySingleton(as: IUserPreferencesRemoteDataSource)
class UserPreferencesRemoteDataSource
    implements IUserPreferencesRemoteDataSource {
  UserPreferencesRemoteDataSource();

  @override
  Future<UserReferencesDto> getUserPreferences() async {}
}
