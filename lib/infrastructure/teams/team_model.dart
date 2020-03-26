import 'package:equatable/equatable.dart';
import 'package:my_proj/domain/core/value_objects.dart';
import 'package:my_proj/domain/teams/team.dart';
import 'package:meta/meta.dart';

class TeamModel extends Equatable {
  final String id;
  final String name;
  final String logoUrl;

  TeamModel({
    @required this.id,
    @required this.name,
    @required this.logoUrl,
  });

  factory TeamModel.fromJson(Map<String, dynamic> json) {
    return TeamModel(
      id: (json['team_id'] as num).toString(),
      name: json['name'],
      logoUrl: json['logo'],
    );
  }

  factory TeamModel.fromDomain(Team team) {
    return TeamModel(
        id: team.id.getOrCrash(), name: team.name, logoUrl: team.logoUrl);
  }

  Team toDomain() {
    return Team(
      id: UniqueId.fromExternalId(id),
      name: name,
      logoUrl: logoUrl,
    );
  }

  @override
  List<Object> get props => [id, name, logoUrl];
}
