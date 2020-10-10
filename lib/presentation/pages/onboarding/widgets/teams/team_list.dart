import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_proj/application/onboarding/onboarding_bloc.dart';
import 'package:my_proj/application/teams/teams_bloc.dart';
import 'package:my_proj/domain/leagues/league.dart';

import '../../../../../injection.dart';

class TeamList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<TeamsBloc>(
      create: (context) {
        List<String> leagueIds = context
            .bloc<OnboardingBloc>()
            .state
            .userPreferences
            .leaugeTeamSelection
            .keys
            .map((e) => e.id.getOrCrash())
            .toList();
        return getIt<TeamsBloc>()..add(TeamsEvent.getAllStarted(leagueIds));
      },
      child: TeamListBody(),
    );
  }
}

class TeamListBody extends StatelessWidget {
  const TeamListBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (context, state) {
        return BlocBuilder<TeamsBloc, TeamsState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => const Center(
                child: CircularProgressIndicator(),
              ),
              loadSuccess: (state) {
                final OnboardingBloc _onboardingBloc =
                    BlocProvider.of<OnboardingBloc>(context);
                List<League> leagues = _onboardingBloc
                    .state.userPreferences.leaugeTeamSelection.keys
                    .toList();

                return Container(
                    height: 395.0,
                    child: ListView.builder(
                        itemCount: state.teams.keys.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          var leagueKey = state.teams.keys.elementAt(index);
                          var currentLeague = leagues.firstWhere((element) =>
                              element.id.getOrCrash() == leagueKey);

                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 3.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(15.0)),
                                  color: Color(0xff192025),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                          width: 280.0,
                                          height: 110.0,
                                          foregroundDecoration: BoxDecoration(
                                            color: Colors.transparent,
                                            backgroundBlendMode:
                                                BlendMode.saturation,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            child: Image.network(
                                                currentLeague.logo),
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }));
              },
              loadFailure: (state) {
                return Container();
              },
            );
          },
        );
      },
    );
  }
}
