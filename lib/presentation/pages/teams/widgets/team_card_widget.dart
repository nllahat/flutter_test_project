import 'package:flutter/material.dart';
import 'package:my_proj/domain/teams/team.dart';

class TeamCard extends StatefulWidget {
  const TeamCard({
    Key key,
    @required this.team,
  }) : super(key: key);

  final Team team;

  @override
  _TeamCardState createState() => _TeamCardState();
}

class _TeamCardState extends State<TeamCard> {
  bool _isSelected = false;

  _onSelected() {
    setState(() => _isSelected = !_isSelected);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(100.0)),
        border: Border.all(
          color: Colors.blue.shade900,
          width: 2.0,
        ),
      ),
      child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: InkWell(
              onTap: () {
                _onSelected();
              },
              child: Container(
                foregroundDecoration: BoxDecoration(
                  color: Colors.transparent,
                  backgroundBlendMode: BlendMode.saturation,
                ),
                child: Image.network(widget.team.logoUrl),
              ))),
    );
  }
}
