import 'package:flutter/material.dart';
import 'package:my_proj/presentation/pages/teams/teams_page.dart';

class HomeTabController extends StatelessWidget {
  const HomeTabController({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Teams',
              ),
              Tab(
                text: 'Matches',
              ),
              Tab(
                text: 'Table',
              ),
            ],
          ),
          // title: Text('Home'),
        ),
        body: TabBarView(
          children: [
            TeamsPage().wrappedPage,
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
