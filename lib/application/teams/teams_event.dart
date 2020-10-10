part of 'teams_bloc.dart';

@freezed
abstract class TeamsEvent with _$TeamsEvent {
  const factory TeamsEvent.getAllStarted(List<String> leagueIds) =
      _GetAllStarted;
  const factory TeamsEvent.teamsReceived(
          Either<TeamFailure, Map<String, List<Team>>> failureOrTeams) =
      _TeamsReceived;
}
