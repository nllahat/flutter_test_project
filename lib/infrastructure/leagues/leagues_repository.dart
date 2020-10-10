import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:my_proj/domain/leagues/i_leagues_repository.dart';
import 'package:my_proj/domain/leagues/league.dart';
import 'package:my_proj/domain/leagues/league_failure.dart';

import '../core/exceptions.dart';
import 'leagues_local_data_source.dart';

@prod
@LazySingleton(as: ILeaguesRepository)
class LeaguesRepository implements ILeaguesRepository {
  final LeaguesLocalDataSource leaguesLocalDataSource;

  LeaguesRepository({@required this.leaguesLocalDataSource});

  @override
  Future<Either<LeagueFailure, List<League>>> getAll() async {
    try {
      final result = await this.leaguesLocalDataSource.getAll();

      final leagues = result.map((leagueDto) {
        return leagueDto.toDomain();
      }).toList();

      return Right(leagues);
    } on ServerException {
      return Left(LeagueFailure.unexpected());
    }
  }

  @override
  Future<Either<LeagueFailure, League>> getById(String id) async {
    final result = await this.leaguesLocalDataSource.getById(id);

    return Right(result.toDomain());
  }
}
