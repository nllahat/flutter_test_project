import 'package:dartz/dartz.dart';

import 'match.dart';
import 'match_failure.dart';

abstract class IMatchesRepository {
  Future<Either<MatchFailure, List<Match>>> getLast(String leagueId, int lastX);
}
