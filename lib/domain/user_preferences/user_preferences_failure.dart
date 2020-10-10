import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_preferences_failure.freezed.dart';

@freezed
abstract class UserPreferencesFailure with _$UserPreferencesFailure {
  const factory UserPreferencesFailure.unexpected() = Unexpected;
  const factory UserPreferencesFailure.insufficientPermissions() =
      InsufficientPermissions;
  const factory UserPreferencesFailure.unableToCreate() = UnableToCreate;
}
