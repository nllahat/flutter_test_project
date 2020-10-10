import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_proj/domain/leagues/league.dart';
import 'package:my_proj/domain/leagues/league_failure.dart';
import 'package:my_proj/domain/teams/i_teams_repository.dart';
import 'package:my_proj/domain/teams/team.dart';
import 'package:my_proj/domain/teams/team_failure.dart';

part 'teams_event.dart';
part 'teams_state.dart';

part 'teams_bloc.freezed.dart';

@injectable
class TeamsBloc extends Bloc<TeamsEvent, TeamsState> {
  final ITeamsRepository _teamsRepository;

  TeamsBloc(this._teamsRepository) : super(const TeamsState.initial());

  @override
  Stream<TeamsState> mapEventToState(
    TeamsEvent event,
  ) async* {
    yield* event.map(
      getAllStarted: (e) async* {
        yield const TeamsState.loadInProgress();

        final failureOrTeams = await _teamsRepository.getAll(e.leagueIds);

        add(TeamsEvent.teamsReceived(failureOrTeams));
      },
      teamsReceived: (e) async* {
        yield e.failureOrTeams.fold(
          (f) => TeamsState.loadFailure(f),
          (teams) => TeamsState.loadSuccess(teams),
        );
      },
    );
  }
}
