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
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          /* Router.navigator.pushNamed(
            Router.noteFormPage,
            arguments: NoteFormPageArguments(editedNote: team),
          ); */
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                team.name,
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
