import 'package:my_proj/infrastructure/leagues/league_dto.dart';

abstract class ILeaguesLocalDataSource {
  Future<List<LeagueDto>> getAll();
  Future<LeagueDto> getById(String id);
}
