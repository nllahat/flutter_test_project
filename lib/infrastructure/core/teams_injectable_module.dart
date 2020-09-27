import 'package:injectable/injectable.dart';
import 'package:my_proj/infrastructure/teams/teams_remote_data_source.dart';
import 'package:http/http.dart' as http;

@module
abstract class TeamsInjectableModule {
  @lazySingleton
  TeamsRemoteDataSource get teamsRemoteDataSource =>
      TeamsRemoteDataSource(client: http.Client());
}
