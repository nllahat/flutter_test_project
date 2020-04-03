
import 'package:my_proj/infrastructure/matches/match_model.dart';

abstract class IMatchesRemoteDataSource {
  Future<List<MatchModel>> getLastMatchesByLeagueId(String leagueId, int lastX);
}
