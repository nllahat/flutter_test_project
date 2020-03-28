import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:my_proj/infrastructure/core/exceptions.dart';

import '../../config_reader.dart';
import '../../domain/teams/i_teams_remote_data_source.dart';
import 'team_model.dart';

@prod
@lazySingleton
@RegisterAs(ITeamsRemoteDataSource)
class TeamsRemoteDataSource implements ITeamsRemoteDataSource {
  final http.Client client;

  TeamsRemoteDataSource({@required this.client});

  @override
  Future<List<TeamModel>> getTeamsByLeagueId(String leagueId) async {
    final url =
        '${ConfigReader.getRapidAPIRootUrl()}/v2/teams/league/$leagueId';
    final response = await client.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'x-rapidapi-host': ConfigReader.getRapidAPIHost(),
        'x-rapidapi-key': ConfigReader.getRapidAPISecret()
      },
    );

    if (response.statusCode == 200) {
      final decodedJSON = json.decode(response.body);
      Iterable l = decodedJSON['api']['teams'];

      final List<TeamModel> teams =
          l.map((teamJson) => TeamModel.fromJson(teamJson)).toList();

      return teams;
    } else {
      throw ServerException();
    }
  }
}
