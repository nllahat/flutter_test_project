import 'package:equatable/equatable.dart';

abstract class MatchFailure extends Equatable {
  @override
  List<Object> get props => [];
}

class MatchFailureUnexpected extends MatchFailure {}
