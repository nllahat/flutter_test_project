import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_proj/application/leagues/leagues_bloc.dart';
import 'package:my_proj/application/onboarding/onboarding_bloc.dart';

import '../../../../../injection.dart';
import 'critical_failure_display_widget.dart';

class LeagueList extends StatelessWidget {
  final Function nextPageFunction;

  const LeagueList({Key key, this.nextPageFunction}) : super(key: key);

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

/*   _nextButtonPressed(pageController) {
    pageController.nextPage(
      duration: Duration(
        milliseconds: 100,
      ),
      curve: Curves.fastLinearToSlowEaseIn,
    );
  } */

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (context, state) {
        return BlocBuilder<LeaguesBloc, LeagueState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => const Center(
                child: CircularProgressIndicator(),
              ),
              loadSuccess: (state) {
                final OnboardingBloc _onboardingBloc =
                    BlocProvider.of<OnboardingBloc>(context);
                var selectedLeagues = _onboardingBloc
                    .state.userPreferences.leaugeTeamSelection.keys;

                return Column(
                  children: [
                    Container(
                      height: 295.0,
                      child: ListView.builder(
                          itemCount: state.leagues.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            final league = state.leagues[index];
                            var isLeagueSelected =
                                selectedLeagues.contains(league);

                            return Container(
                              margin: EdgeInsets.symmetric(horizontal: 3.0),
                              width: 205.0,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0)),
                                color: isLeagueSelected
                                    ? Color(0xff22514e)
                                    : Color(0xff192025),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      foregroundDecoration: BoxDecoration(
                                        color: Colors.transparent,
                                        backgroundBlendMode:
                                            BlendMode.saturation,
                                      ),
                                      child: Image.network(league.logo),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(isLeagueSelected
                                                    ? 0xff76f9fa
                                                    : 0xffD94853)
                                                .withAlpha(70),
                                            blurRadius: 10.0,
                                            spreadRadius: 2.0,
                                          ),
                                        ],
                                        color: Color(0xffD94853),
                                      ),
                                      child: RawMaterialButton(
                                        onPressed: () {
                                          if (isLeagueSelected) {
                                            _onboardingBloc.add(
                                                OnboardingEvent.unselectLeague(
                                                    league));
                                          } else {
                                            _onboardingBloc.add(
                                                OnboardingEvent.selectLeague(
                                                    league));
                                          }
                                        },
                                        fillColor: isLeagueSelected
                                            ? Color(0xff76f9fa)
                                            : Color(0xffD94853),
                                        child: Icon(
                                          isLeagueSelected
                                              ? Icons.remove
                                              : Icons.add,
                                          size: 30.0,
                                          color: isLeagueSelected
                                              ? Colors.black54
                                              : Colors.white,
                                        ),
                                        padding: EdgeInsets.all(12.0),
                                        shape: CircleBorder(),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                );
              },
              loadFailure: (state) {
                return CriticalFailureDisplay(
                  failure: state.leagueFailure,
                );
              },
            );
          },
        );
      },
    );
  }
}
