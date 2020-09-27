import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_proj/application/matches/matches_bloc.dart';
import 'package:my_proj/presentation/pages/matches/widgets/critical_failure_display_widget.dart';
import 'package:my_proj/presentation/pages/matches/widgets/match_card_widget.dart';

class MatchesBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MatchesBloc, MatchesState>(
      builder: (context, state) {
        if (state is MatchesStateInitial) {
          return Container();
        } else if (state is DataTransferInProgress) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is LoadSuccess) {
          return Container(
            padding: const EdgeInsets.all(10.0),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: state.matches.length,
                itemBuilder: (context, index) {
                  final match = state.matches[index];

                  return MatchCard(match: match);
                }),
          );
        } else if (state is LoadFailure) {
          return CriticalFailureDisplay(failure: state.matchFailure);
        } else {
          return Container();
        }
      },
    );
  }
}
