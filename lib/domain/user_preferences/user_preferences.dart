import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_proj/domain/core/value_objects.dart';
import 'package:my_proj/domain/leagues/league.dart';
import 'package:my_proj/domain/teams/team.dart';

part 'user_preferences.freezed.dart';

@freezed
abstract class UserPreferences with _$UserPreferences {
  const factory UserPreferences({
    @required UniqueId id,
    @required Map<League, List<Team>> leaugeTeamSelection,
  }) = _UserPreferences;

  factory UserPreferences.empty() => UserPreferences(
        id: UniqueId.empty(),
        leaugeTeamSelection: Map<League, List<Team>>(),
      );
}
