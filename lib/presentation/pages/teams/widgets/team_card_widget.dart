import 'package:flutter/material.dart';
import 'package:my_proj/domain/teams/team.dart';

class TeamCard extends StatelessWidget {
  const TeamCard({
    Key key,
    @required this.team,
  }) : super(key: key);

  final Team team;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(100.0)),
        border: Border.all(
          color: Colors.grey.shade200,
          width: 2.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: ColorFilter.mode(Colors.grey, BlendMode.darken),
              image: NetworkImage(team.logoUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
