import 'package:my_proj/infrastructure/teams/team_model.dart';

abstract class ILeaguesRemoteDataSource {
  Future<List<TeamModel>> getAll();
}
