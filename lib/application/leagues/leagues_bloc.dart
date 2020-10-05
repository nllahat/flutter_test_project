import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_proj/domain/leagues/i_leagues_repository.dart';
import 'package:my_proj/domain/leagues/league.dart';
import 'package:my_proj/domain/leagues/league_failure.dart';

part 'leagues_event.dart';
part 'leagues_state.dart';

part 'leagues_bloc.freezed.dart';

@injectable
class LeaguesBloc extends Bloc<LeaguesEvent, LeagueState> {
  final ILeaguesRepository _leagueRepository;

  LeaguesBloc(this._leagueRepository) : super(const LeagueState.initial());

  @override
  Stream<LeagueState> mapEventToState(
    LeaguesEvent event,
  ) async* {
    yield* event.map(
      getAllStarted: (e) async* {
        yield const LeagueState.loadInProgress();

        final failureOrLeagues = await _leagueRepository.getAll();

        add(LeaguesEvent.leaguesReceived(failureOrLeagues));
      },
      leaguesReceived: (e) async* {
        yield e.failureOrLeagues.fold(
          (f) => LeagueState.loadFailure(f),
          (leagues) => LeagueState.loadSuccess(leagues),
        );
      },
    );
  }
}
