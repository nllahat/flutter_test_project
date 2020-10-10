import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:my_proj/infrastructure/teams/teams_local_data_source.dart';

import '../../domain/teams/i_teams_repository.dart';
import '../../domain/teams/team.dart';
import '../../domain/teams/team_failure.dart';
import '../core/exceptions.dart';

@prod
@LazySingleton(as: ITeamsRepository)
class TeamsRepository implements ITeamsRepository {
  final TeamsLocalDataSource _teamsLocalDataSource;

  TeamsRepository(this._teamsLocalDataSource);

  @override
  Future<Either<TeamFailure, Map<String, List<Team>>>> getAll(
      List<String> leagueIds) async {
    try {
      Map<String, List<Team>> map = Map();

      for (var i = 0; i < leagueIds.length; i++) {
        final result =
            await this._teamsLocalDataSource.getTeamsByLeagueId(leagueIds[i]);

        map[leagueIds[i]] = result.map((e) => e.toDomain()).toList();
      }

      return Right(map);
    } on ServerException {
      return Left(TeamFailureUnexpected());
    }
  }

  @override
  Future<Either<TeamFailure, Team>> getById(String teamId) {
    // TODO: implement getById
    throw UnimplementedError();
  }
}
