import 'package:my_proj/domain/core/value_objects.dart';
import 'package:my_proj/domain/teams/team.dart';
import 'package:meta/meta.dart';

class TeamModel extends Team {
  TeamModel({
    @required UniqueId id,
    @required String name,
    @required String logoUrl,
  }) : super(id: id, name: name, logoUrl: logoUrl);

  factory TeamModel.fromJson(Map<String, dynamic> json) {
    return TeamModel(
      id: UniqueId.fromExternalId(json['team_id']),
      name: json['name'],
      logoUrl: json['logo'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'team_id': id,
      'name': name,
      'logo': logoUrl,
    };
  }
}
