import 'package:my_proj/domain/teams/team.dart';

abstract class ITeamsRemoteDataSource {
  Future<List<Team>> getTeamsByLeagueId(int leagueId);
}
