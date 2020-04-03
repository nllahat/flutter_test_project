import 'package:flutter/material.dart';
import 'package:my_proj/presentation/pages/matches/matches_page.dart';
import 'package:my_proj/presentation/pages/teams/teams_page.dart';

class HomeTabController extends StatelessWidget {
  const HomeTabController({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(
            /* unselectedLabelColor: Theme.of(context).accentColor,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(10),
            ), */
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
            MatchesPage().wrappedPage,
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
