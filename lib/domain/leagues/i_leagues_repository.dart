import 'package:dartz/dartz.dart';
import 'package:my_proj/domain/leagues/league.dart';

import 'league_failure.dart';

abstract class ILeaguesRepository {
  Future<Either<LeagueFailure, List<League>>> getAll();
}
