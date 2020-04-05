import 'package:flutter/material.dart';
import 'package:my_proj/domain/matches/match.dart';
import 'package:my_proj/domain/teams/team.dart';

class MatchCard extends StatelessWidget {
  final Match match;

  MatchCard({@required this.match});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              MatchTeam(
                team: match.homeTeam,
              ),
              MatchResult(
                homeGoals: match.goalsHomeTeam,
                awayGoals: match.goalsAwayTeam,
                elapsedTime: match.elapsed,
                status: match.status,
              ),
              MatchTeam(
                team: match.awayTeam,
              ),
            ],
          )),
    );
  }
}

class MatchTeam extends StatelessWidget {
  final Team team;

  MatchTeam({@required this.team});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        width: 100,
        // height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.network(
              team.logoUrl,
              height: 50,
              width: 50,
            ),
            Text(
              '${team.name}',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14.0),
            ),
          ],
        ));
  }
}

class MatchResult extends StatelessWidget {
  final int homeGoals;
  final int awayGoals;
  final int elapsedTime;
  final String status;

  MatchResult({
    @required this.homeGoals,
    @required this.awayGoals,
    @required this.elapsedTime,
    @required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        width: 120,
        // height: 120,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  '$homeGoals',
                  style: TextStyle(fontSize: 18.0),
                ),
                Text(
                  ':',
                  style: TextStyle(fontSize: 18.0),
                ),
                Text(
                  '$awayGoals',
                  style: TextStyle(fontSize: 18.0),
                )
              ],
            ),
            Chip(
              label: Text(
                status,
                style: TextStyle(fontSize: 12.0),
              ),
            ),
          ],
        )));
  }
}
