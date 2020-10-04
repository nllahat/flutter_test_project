import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_proj/application/teams/teams_bloc.dart';

import '../../../../../injection.dart';

class TeamList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<TeamsBloc>(
      create: (context) => getIt<TeamsBloc>()..add(const GetAllStarted('524')),
      child: TeamListBody(),
    );
  }
}

class TeamListBody extends StatelessWidget {
  const TeamListBody({Key key}) : super(key: key);

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
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final team = state.teams[index];

                    return Container(
                      foregroundDecoration: BoxDecoration(
                        color: Colors.transparent,
                        backgroundBlendMode: BlendMode.saturation,
                      ),
                      child: Image.network(team.logoUrl),
                    );
                  }));
        } else if (state is LoadFailure) {
          return Container();
        } else {
          return Container();
        }
      },
    );
  }
}
