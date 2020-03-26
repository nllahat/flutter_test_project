part of 'teams_bloc.dart';

@immutable
abstract class TeamsState extends Equatable {
  @override
  List<Object> get props => [];
}

class Initial extends TeamsState {}

class DataTransferInProgress extends TeamsState {}

class LoadSuccess extends TeamsState {
  final List<Team> teams;

  LoadSuccess({@required this.teams});

  @override
  List<Object> get props => [teams];
}

class LoadFailure extends TeamsState {
  final TeamFailure teamFailure;

  LoadFailure({@required this.teamFailure});

  @override
  List<Object> get props => [teamFailure];
}
