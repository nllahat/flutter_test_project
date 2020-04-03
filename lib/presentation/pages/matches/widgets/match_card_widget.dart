import 'package:flutter/material.dart';
import 'package:my_proj/domain/matches/match.dart';

class MatchCard extends StatefulWidget {
  const MatchCard({
    Key key,
    @required this.match,
  }) : super(key: key);

  final Match match;

  @override
  _MatchCardState createState() => _MatchCardState();
}

class _MatchCardState extends State<MatchCard> {
  bool _isSelected = false;

  _onSelected() {
    setState(() => _isSelected = !_isSelected);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Text('${widget.match.homeTeam} VS ${widget.match.awayTeam}'),
    );
  }
}
