import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:my_proj/domain/teams/i_teams_repository.dart';
import 'package:my_proj/domain/teams/team.dart';
import 'package:meta/meta.dart';
import 'package:my_proj/domain/teams/team_failure.dart';

part 'teams_event.dart';
part 'teams_state.dart';

@injectable
class TeamsBloc extends Bloc<TeamsEvent, TeamsState> {
  final ITeamsRepository _teamsRepository;

  TeamsBloc(this._teamsRepository);

  @override
  TeamsState get initialState => Initial();

  @override
  Stream<TeamsState> mapEventToState(
    TeamsEvent event,
  ) async* {
    if (event is GetAllStarted) {
      yield DataTransferInProgress();

      final failureOrTeams = await _teamsRepository.getAll(event.leagueId);

      add(TeamsReceived(failureOrTeams));
    } else if (event is TeamsReceived) {
      yield event.failureOrTeams.fold(
        (f) => LoadFailure(teamFailure: f),
        (teams) => LoadSuccess(teams: teams),
      );
    }
  }
}
