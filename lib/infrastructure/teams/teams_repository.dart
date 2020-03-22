import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:my_proj/domain/teams/i_teams_repository.dart';
import 'package:my_proj/domain/teams/team.dart';
import 'package:my_proj/domain/teams/team_failure.dart';

@lazySingleton
@RegisterAs(ITeamsRepository)
class TeamRepository implements ITeamsRepository {
  @override
  Future<Either<TeamFailure, List<Team>>> getAll(int leaugeId) {
    return null;
  }
}
