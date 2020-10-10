import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:my_proj/infrastructure/leagues/league_dto.dart';

import 'i_leagues_local_data_source.dart';

@injectable
@LazySingleton(as: ILeaguesLocalDataSource)
class LeaguesLocalDataSource implements ILeaguesLocalDataSource {
  LeaguesLocalDataSource();

  Future<String> _loadFromAsset() async {
    return rootBundle.loadString("assets/leagues.json");
  }

  @override
  Future<List<LeagueDto>> getAll() async {
    String jsonString = await _loadFromAsset();
    final List<dynamic> jsonResponse = jsonDecode(jsonString);
    return jsonResponse.map((e) => LeagueDto.fromJson(e)).toList();
  }

  @override
  Future<LeagueDto> getById(String id) async {
    String jsonString = await _loadFromAsset();
    final List<dynamic> jsonResponse = jsonDecode(jsonString);

    dynamic obj = jsonResponse.indexOf((e) => e.id);
    return LeagueDto.fromJson(obj);
  }
}
