import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_proj/domain/leagues/league.dart';
import 'package:my_proj/domain/teams/team.dart';
import 'package:my_proj/domain/user_preferences/user_preferences.dart';
import 'package:my_proj/infrastructure/leagues/leagues_repository.dart';
import 'package:my_proj/infrastructure/teams/teams_repository.dart';

import '../../domain/core/value_objects.dart';

part 'user_preferences_dto.freezed.dart';
part 'user_preferences_dto.g.dart';

@freezed
abstract class UserReferencesDto implements _$UserReferencesDto {
  const UserReferencesDto._();

  const factory UserReferencesDto({
    @required String id,
    @required Map<String, List<String>> leaugeTeamSelection,
  }) = _UserReferencesDto;

  factory UserReferencesDto.fromDomain(UserPreferences userPreferences) {
    Map<String, List<String>> map = Map();

    userPreferences.leaugeTeamSelection.keys.forEach((e) {
      map[e.id.getOrCrash()] = userPreferences.leaugeTeamSelection[e]
          .map((e) => e.id.getOrCrash())
          .toList();
    });

    return UserReferencesDto(
        id: userPreferences.id.getOrCrash(), leaugeTeamSelection: map);
  }

  Future<UserPreferences> toDomain(LeaguesRepository leaguesRepository,
      TeamsRepository teamsRepository) async {
    Map<League, List<Team>> map = Map();

    leaugeTeamSelection.forEach((key, value) async {
      var leagueOption = await leaguesRepository.getById(key);
      leagueOption.fold((l) => null, (r) {
        map[r] = value
            .map((e) async {
              var teamOption = await teamsRepository.getById(e);
              return teamOption.getOrElse(() => null);
            })
            .cast<Team>()
            .toList();
      });
    });

    return UserPreferences(
      id: UniqueId.fromUniqueString(id),
      leaugeTeamSelection: map,
    );
  }

  factory UserReferencesDto.fromJson(Map<String, dynamic> json) =>
      _$UserReferencesDtoFromJson(json);

  factory UserReferencesDto.fromFirestore(DocumentSnapshot doc) {
    return UserReferencesDto.fromJson(doc.data()).copyWith(id: doc.id);
  }
}
