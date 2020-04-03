part of 'matches_bloc.dart';

@immutable
abstract class MatchesState extends Equatable {
  @override
  List<Object> get props => [];
}

class Initial extends MatchesState {}

class DataTransferInProgress extends MatchesState {}

class LoadSuccess extends MatchesState {
  final List<Match> matches;

  LoadSuccess({@required this.matches});

  @override
  List<Object> get props => [matches];
}

class LoadFailure extends MatchesState {
  final MatchFailure matchFailure;

  LoadFailure({@required this.matchFailure});

  @override
  List<Object> get props => [matchFailure];
}
