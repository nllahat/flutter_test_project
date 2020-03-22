import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

import '../../domain/teams/i_teams_remote_data_source.dart';
import '../../domain/teams/team.dart';

class TeamsRemoteDataSource implements ITeamsRemoteDataSource {
  final http.Client client;

  TeamsRemoteDataSource({@required this.client});

  @override
  Future<List<Team>> getTeamsByLeagueId(int leagueId) {
    return null;
  }

}