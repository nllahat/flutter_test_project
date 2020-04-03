import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:my_proj/infrastructure/core/exceptions.dart';

import '../../config_reader.dart';
import '../../domain/matches/i_matches_remote_data_source.dart';
import 'match_model.dart';

@prod
@lazySingleton
@RegisterAs(IMatchesRemoteDataSource)
class MatchesRemoteDataSource implements IMatchesRemoteDataSource {
  final http.Client client;

  MatchesRemoteDataSource({@required this.client});

  @override
  Future<List<MatchModel>> getLastMatchesByLeagueId(
      String leagueId, int lastX) async {
    final url =
        '${ConfigReader.getRapidAPIRootUrl()}/v2/fixtures/league/$leagueId/last/$lastX';
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
      Iterable l = decodedJSON['api']['fixtures'];

      final List<MatchModel> matches =
          l.map((matchJson) => MatchModel.fromJson(matchJson)).toList();

      return matches;
    } else {
      throw ServerException();
    }
  }
}
