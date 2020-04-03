import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:my_proj/domain/matches/i_matches_repository.dart';
import 'package:my_proj/domain/matches/match.dart';
import 'package:meta/meta.dart';
import 'package:my_proj/domain/matches/match_failure.dart';

part 'matches_event.dart';
part 'matches_state.dart';

@injectable
class MatchesBloc extends Bloc<MatchesEvent, MatchesState> {
  final IMatchesRepository _matchesRepository;

  MatchesBloc(this._matchesRepository);

  @override
  MatchesState get initialState => Initial();

  @override
  Stream<MatchesState> mapEventToState(
    MatchesEvent event,
  ) async* {
    if (event is GetLastStarted) {
      yield DataTransferInProgress();

      final failureOrMatches = await _matchesRepository.getLast(event.leagueId, event.lastX);

      add(MatchesReceived(failureOrMatches));
    } else if (event is MatchesReceived) {
      yield event.failureOrMatches.fold(
        (f) => LoadFailure(matchFailure: f),
        (matches) => LoadSuccess(matches: matches),
      );
    }
  }
}
