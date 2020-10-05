part of 'leagues_bloc.dart';

@freezed
abstract class LeagueState with _$LeagueState {
  const factory LeagueState.initial() = Initial;
  const factory LeagueState.loadInProgress() = DataTransferInProgress;
  const factory LeagueState.loadSuccess(List<League> leagues) = LoadSuccess;
  const factory LeagueState.loadFailure(LeagueFailure leagueFailure) =
      LoadFailure;
}
