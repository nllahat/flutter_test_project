import 'package:equatable/equatable.dart';
import 'package:my_proj/domain/core/value_objects.dart';
import 'package:my_proj/domain/teams/team.dart';
import 'package:meta/meta.dart';

class TeamModel extends Equatable {
  final String teamId;
  final String teamName;
  final String logo;

  TeamModel(
      {@required this.teamId, @required this.teamName, @required this.logo});

  factory TeamModel.fromJson(Map<String, dynamic> json) {
    return TeamModel(
        teamId: json['id'], teamName: json['name'], logo: json['logo']);
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
