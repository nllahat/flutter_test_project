import 'package:my_proj/infrastructure/teams/team_model.dart';

abstract class ITeamsLocalDataSource {
  Future<List<TeamModel>> getTeamsByLeagueId(String leagueId);
  Future<List<TeamModel>> getTeamsByLeagueIds(List<String> leagueIds);
  Future<TeamModel> getById(String teamId);
}
