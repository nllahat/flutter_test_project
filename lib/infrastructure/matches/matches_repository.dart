import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../domain/matches/i_matches_repository.dart';
import '../../domain/matches/match.dart';
import '../../domain/matches/match_failure.dart';
import '../core/exceptions.dart';
import 'matches_remote_data_source.dart';

@prod
@LazySingleton(as: IMatchesRepository)
class MatchesRepository implements IMatchesRepository {
  final MatchesRemoteDataSource matchesRemoteDataSource;

  MatchesRepository({@required this.matchesRemoteDataSource});

  @override
  Future<Either<MatchFailure, List<Match>>> getLast(
      String leagueId, int lastX) async {
    try {
      final result = await this
          .matchesRemoteDataSource
          .getLastMatchesByLeagueId(leagueId, lastX);

      final matches = result.map((matchModel) {
        return matchModel.toDomain();
      }).toList();

      return Right(matches);
    } on ServerException {
      return Left(MatchFailureUnexpected());
    }
  }
}
