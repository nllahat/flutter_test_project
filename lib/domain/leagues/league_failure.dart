import 'package:freezed_annotation/freezed_annotation.dart';

part 'league_failure.freezed.dart';

@freezed
abstract class LeagueFailure with _$LeagueFailure {
  const factory LeagueFailure.unexpected() = Unexpected;
  const factory LeagueFailure.insufficientPermissions() =
      InsufficientPermissions;
  const factory LeagueFailure.unableToUpdate() = UnableToUpdate;
}
