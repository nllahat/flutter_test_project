import 'package:flutter/material.dart';
import 'package:my_proj/domain/teams/team_failure.dart';

class CriticalFailureDisplay extends StatelessWidget {
  final TeamFailure failure;

  const CriticalFailureDisplay({
    Key key,
    @required this.failure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Text(
            '😱',
            style: TextStyle(fontSize: 100),
          ),
          Text(
            failure is TeamFailureUnexpected
                ? 'Unexpected error.\nPlease, contact support.'
                : 'Something wend wrong',
            style: const TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: () {
              print('Sending email...');
            },
            textColor: Theme.of(context).accentColor,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                Icon(Icons.mail),
                SizedBox(width: 4),
                Text('I NEED HELP'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
