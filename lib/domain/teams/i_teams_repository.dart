import 'package:dartz/dartz.dart';
import 'package:my_proj/domain/teams/team.dart';
import 'package:my_proj/domain/teams/team_failure.dart';

abstract class ITeamsRepository {
  Future<Either<TeamFailure, List<Team>>> getAll(String leagueId);
}
