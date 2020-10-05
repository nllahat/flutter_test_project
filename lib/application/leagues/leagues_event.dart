part of 'leagues_bloc.dart';

@freezed
abstract class LeaguesEvent with _$LeaguesEvent {
  const factory LeaguesEvent.getAllStarted() = _GetAllStarted;
  const factory LeaguesEvent.leaguesReceived(
      Either<LeagueFailure, List<League>> failureOrLeagues) = _LeaguesReceived;
}
