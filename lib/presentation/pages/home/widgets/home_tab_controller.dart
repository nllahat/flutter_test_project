import 'package:flutter/material.dart';
import 'package:my_proj/application/auth/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeTabController extends StatelessWidget {
  const HomeTabController({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          titleSpacing: 10.0,
          title: Text(
            'Premier League',
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.headline,
          ),
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              context.bloc<AuthBloc>().add(AuthEventSignedOut());
            },
          ),
        ),
        body: Column(
          children: <Widget>[
            Container(
              color: Theme.of(context).primaryColor,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  color: Theme.of(context).tabBarTheme.unselectedLabelColor,
                  height: 30.0,
                  padding: EdgeInsets.symmetric(
                    horizontal: 50.0,
                  ),
                  child: TabBar(
                    labelColor: Color.fromRGBO(22, 112, 238, 1),
                    unselectedLabelColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    tabs: [
                      Tab(
                        text: 'Table',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Icon(Icons.directions_bike),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
