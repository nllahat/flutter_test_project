import 'package:flutter/foundation.dart';
import 'package:my_proj/domain/core/entity.dart';
import 'package:my_proj/domain/core/value_objects.dart';
import 'package:my_proj/domain/teams/team.dart';

class Match extends IEntity {
  final UniqueId id;
  final DateTime date;
  final String status;
  final Team homeTeam;
  final Team awayTeam;
  final int goalsHomeTeam;
  final int goalsAwayTeam;
  final int elapsed;

  const Match({
    @required this.id,
    @required this.date,
    @required this.status,
    @required this.homeTeam,
    @required this.awayTeam,
    @required this.goalsHomeTeam,
    @required this.goalsAwayTeam,
    @required this.elapsed,
  });

  @override
  List<Object> get props => [
        id,
        date,
        status,
        homeTeam,
        awayTeam,
        goalsHomeTeam,
        goalsAwayTeam,
        elapsed
      ];

  factory Match.empty() => Match(
      id: UniqueId(),
      date: DateTime.now(),
      status: '',
      homeTeam: Team.empty(),
      awayTeam: Team.empty(),
      goalsHomeTeam: 0,
      goalsAwayTeam: 0,
      elapsed: 0);
}
