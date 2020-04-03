import 'package:injectable/injectable.dart';
import 'package:my_proj/infrastructure/matches/matches_remote_data_source.dart';
import 'package:http/http.dart' as http;

@registerModule
abstract class MatchesInjectableModule {
  @lazySingleton
  MatchesRemoteDataSource get matchesRemoteDataSource =>
      MatchesRemoteDataSource(client: http.Client());
}
