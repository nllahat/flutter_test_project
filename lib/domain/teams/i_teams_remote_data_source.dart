import 'package:my_proj/infrastructure/teams/team_model.dart';

abstract class ITeamsRemoteDataSource {
  Future<List<TeamModel>> getTeamsByLeagueId(String leagueId);
}
