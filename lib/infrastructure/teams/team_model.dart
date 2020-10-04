import 'package:equatable/equatable.dart';
import 'package:my_proj/domain/core/value_objects.dart';
import 'package:my_proj/domain/teams/team.dart';
import 'package:meta/meta.dart';

class TeamModel extends Equatable {
  final int teamId;
  final String teamName;
  final String logo;

  TeamModel(
      {@required this.teamId, @required this.teamName, @required this.logo});

  factory TeamModel.fromJson(Map<String, dynamic> json) {
    return TeamModel(
        teamId: json['team_id'],
        teamName: json['team_name'],
        logo: json['logo']);
  }

  Team toDomain() {
    return Team(
      id: UniqueId.fromUniqueString(teamId.toString()),
      name: teamName,
      logoUrl: logo,
    );
  }

  @override
  List<Object> get props => [teamId, teamName, logo];
}
