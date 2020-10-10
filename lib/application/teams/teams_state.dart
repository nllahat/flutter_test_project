part of 'teams_bloc.dart';

@freezed
abstract class TeamsState with _$TeamsState {
  const factory TeamsState.initial() = Initial;
  const factory TeamsState.loadInProgress() = DataTransferInProgress;
  const factory TeamsState.loadSuccess(Map<String, List<Team>> teams) =
      LoadSuccess;
  const factory TeamsState.loadFailure(TeamFailure teamFailure) = LoadFailure;
}
