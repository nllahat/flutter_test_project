import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:my_proj/infrastructure/core/exceptions.dart';

import '../../config_reader.dart';
import '../../domain/teams/i_teams_local_data_source.dart';
import 'team_model.dart';

@prod
@injectable
@LazySingleton(as: ITeamsLocalDataSource)
class TeamsLocalDataSource implements ITeamsLocalDataSource {
  Future<String> _loadFromAsset() async {
    return rootBundle.loadString("assets/teams.json");
  }

  @override
  Future<List<TeamModel>> getTeamsByLeagueId(String leagueId) async {
    String jsonString = await _loadFromAsset();
    final List<dynamic> jsonResponse = jsonDecode(jsonString);

    return jsonResponse.map((e) => TeamModel.fromJson(e)).toList();
  }

  @override
  Future<List<TeamModel>> getTeamsByLeagueIds(List<String> leagueIds) async {
    String jsonString = await _loadFromAsset();
    final List<dynamic> jsonResponse = jsonDecode(jsonString);

    return jsonResponse.map((e) => TeamModel.fromJson(e)).toList();
  }

  @override
  Future<TeamModel> getById(String teamId) async {
    String jsonString = await _loadFromAsset();
    final List<dynamic> jsonResponse = jsonDecode(jsonString);

    return jsonResponse.firstWhere((element) => element.id == teamId);
  }
}
