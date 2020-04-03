part of 'matches_bloc.dart';

@immutable
abstract class MatchesEvent extends Equatable {
  const MatchesEvent();

  @override
  List<Object> get props => [];
}

class GetLastStarted extends MatchesEvent {
  final String leagueId;
  final int lastX;

  const GetLastStarted(this.leagueId, this.lastX);

  @override
  List<Object> get props => [leagueId, lastX];
}

class MatchesReceived extends MatchesEvent {
  final Either<MatchFailure, List<Match>> failureOrMatches;

  const MatchesReceived(this.failureOrMatches);

  @override
  List<Object> get props => [failureOrMatches];
}
