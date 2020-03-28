import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../domain/teams/i_teams_repository.dart';
import '../../domain/teams/team.dart';
import '../../domain/teams/team_failure.dart';
import '../core/exceptions.dart';
import 'teams_remote_data_source.dart';

@prod
@lazySingleton
@RegisterAs(ITeamsRepository)
class TeamsRepository implements ITeamsRepository {
  final TeamsRemoteDataSource teamsRemoteDataSource;

  TeamsRepository({@required this.teamsRemoteDataSource});

  @override
  Future<Either<TeamFailure, List<Team>>> getAll(String leagueId) async {
    try {
      final result =
          await this.teamsRemoteDataSource.getTeamsByLeagueId(leagueId);

      final teams = result.map((teamModel) {
        return teamModel.toDomain();
      }).toList();

      return Right(teams);
    } on ServerException {
      return Left(TeamFailureUnexpected());
    }
  }
}
