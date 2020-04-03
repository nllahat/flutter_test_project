import 'package:equatable/equatable.dart';
import 'package:my_proj/domain/core/value_objects.dart';
import 'package:my_proj/domain/matches/match.dart';
import 'package:meta/meta.dart';
import 'package:my_proj/infrastructure/teams/team_model.dart';

class MatchModel extends Equatable {
  final int fixtureId;
  final int leagueId;
  final League league;
  final String eventDate;
  final int eventTimestamp;
  final int firstHalfStart;
  final int secondHalfStart;
  final String round;
  final String status;
  final String statusShort;
  final int elapsed;
  final String venue;
  final String referee;
  final TeamModel homeTeam;
  final TeamModel awayTeam;
  final int goalsHomeTeam;
  final int goalsAwayTeam;
  final Score score;

  MatchModel(
      {@required this.fixtureId,
      @required this.leagueId,
      @required this.league,
      @required this.eventDate,
      @required this.eventTimestamp,
      @required this.firstHalfStart,
      @required this.secondHalfStart,
      @required this.round,
      @required this.status,
      @required this.statusShort,
      @required this.elapsed,
      @required this.venue,
      @required this.referee,
      @required this.homeTeam,
      @required this.awayTeam,
      @required this.goalsHomeTeam,
      @required this.goalsAwayTeam,
      @required this.score});

  factory MatchModel.fromJson(Map<String, dynamic> json) {
    return MatchModel(
      fixtureId: json['fixture_id'],
      leagueId: json['league_id'],
      league:
          json['league'] != null ? new League.fromJson(json['league']) : null,
      eventDate: json['event_date'],
      eventTimestamp: json['event_timestamp'],
      firstHalfStart: json['firstHalfStart'],
      secondHalfStart: json['secondHalfStart'],
      round: json['round'],
      status: json['status'],
      statusShort: json['statusShort'],
      elapsed: json['elapsed'],
      venue: json['venue'],
      referee: json['referee'],
      homeTeam: json['homeTeam'] != null
          ? TeamModel.fromJson(json['homeTeam'])
          : null,
      awayTeam: json['awayTeam'] != null
          ? TeamModel.fromJson(json['awayTeam'])
          : null,
      goalsHomeTeam: json['goalsHomeTeam'],
      goalsAwayTeam: json['goalsAwayTeam'],
      score: json['score'] != null ? new Score.fromJson(json['score']) : null,
    );
  }

  Match toDomain() {
    return Match(
        id: UniqueId.fromExternalId(fixtureId.toString()),
        date: DateTime.parse(eventDate),
        status: status,
        homeTeam: homeTeam.toDomain(),
        awayTeam: awayTeam.toDomain(),
        goalsHomeTeam: goalsHomeTeam,
        goalsAwayTeam: goalsAwayTeam,
        elapsed: elapsed);
  }

  @override
  List<Object> get props => [
        fixtureId,
        leagueId,
        league,
        eventDate,
        eventTimestamp,
        firstHalfStart,
        secondHalfStart,
        round,
        status,
        statusShort,
        elapsed,
        venue,
        referee,
        homeTeam,
        awayTeam,
        goalsHomeTeam,
        goalsAwayTeam,
        score,
      ];
}

class League {
  String name;
  String country;
  String logo;
  String flag;

  League({this.name, this.country, this.logo, this.flag});

  League.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    country = json['country'];
    logo = json['logo'];
    flag = json['flag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['country'] = this.country;
    data['logo'] = this.logo;
    data['flag'] = this.flag;
    return data;
  }
}

class Score {
  String halftime;
  String fulltime;
  String extratime;
  String penalty;

  Score({this.halftime, this.fulltime, this.extratime, this.penalty});

  Score.fromJson(Map<String, dynamic> json) {
    halftime = json['halftime'];
    fulltime = json['fulltime'];
    extratime = json['extratime'];
    penalty = json['penalty'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['halftime'] = this.halftime;
    data['fulltime'] = this.fulltime;
    data['extratime'] = this.extratime;
    data['penalty'] = this.penalty;
    return data;
  }
}
