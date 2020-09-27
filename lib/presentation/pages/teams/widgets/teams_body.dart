import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_proj/application/teams/teams_bloc.dart';
import 'package:my_proj/presentation/pages/teams/widgets/critical_failure_display_widget.dart';
import 'package:my_proj/presentation/pages/teams/widgets/team_card_widget.dart';

class TeamsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TeamsBloc, TeamsState>(
      builder: (context, state) {
        if (state is TeamsStateInitial) {
          return Container();
        } else if (state is DataTransferInProgress) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is LoadSuccess) {
          return Container(
            padding: const EdgeInsets.all(10.0),
            child: GridView.builder(
                shrinkWrap: true,
                itemCount: state.teams.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 20.0,
                ),
                itemBuilder: (context, index) {
                  final team = state.teams[index];

                  return TeamCard(team: team);
                }),
          );
        } else if (state is LoadFailure) {
          return CriticalFailureDisplay(failure: state.teamFailure);
        } else {
          return Container();
        }
      },
    );
  }
}
