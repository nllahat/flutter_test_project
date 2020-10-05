import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_proj/application/leagues/leagues_bloc.dart';
import 'package:my_proj/application/teams/teams_bloc.dart';

import '../../../../../injection.dart';
import 'critical_failure_display_widget.dart';

class LeagueList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LeaguesBloc>(
      create: (context) =>
          getIt<LeaguesBloc>()..add(const LeaguesEvent.getAllStarted()),
      child: LeagueListBody(),
    );
  }
}

class LeagueListBody extends StatelessWidget {
  const LeagueListBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LeaguesBloc, LeagueState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
            return Container(
                height: 290.0,
                padding: const EdgeInsets.all(10.0),
                child: ListView.builder(
                    itemCount: state.leagues.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final league = state.leagues[index];

                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 3.0),
                        width: 210.0,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          color: Color(0xff192025),
                          //elevation: 5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                foregroundDecoration: BoxDecoration(
                                  color: Colors.transparent,
                                  backgroundBlendMode: BlendMode.saturation,
                                ),
                                child: Image.network(league.logo),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xffD94853).withAlpha(70),
                                      blurRadius: 10.0,
                                      spreadRadius: 2.0,
                                    ),
                                  ],
                                  color: Color(0xffD94853),
                                ),
                                child: RawMaterialButton(
                                  onPressed: () {},
                                  fillColor: Color(0xffD94853),
                                  child: Icon(
                                    Icons.add,
                                    size: 35.0,
                                    color: Colors.white,
                                  ),
                                  padding: EdgeInsets.all(12.0),
                                  shape: CircleBorder(),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }));
          },
          loadFailure: (state) {
            return CriticalFailureDisplay(
              failure: state.leagueFailure,
            );
          },
        );
      },
    );
  }
}
