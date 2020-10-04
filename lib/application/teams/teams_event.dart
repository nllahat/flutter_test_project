part of 'teams_bloc.dart';

@immutable
abstract class TeamsEvent extends Equatable {
  const TeamsEvent();

  @override
  List<Object> get props => [];
}

class GetAllStarted extends TeamsEvent {
  final String leagueId;

  const GetAllStarted(this.leagueId);

  @override
  List<Object> get props => [leagueId];
}

class TeamsReceived extends TeamsEvent {
  final Either<TeamFailure, List<Team>> failureOrTeams;

  const TeamsReceived(this.failureOrTeams);

  @override
  List<Object> get props => [failureOrTeams];
}
