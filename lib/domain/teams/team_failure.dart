import 'package:equatable/equatable.dart';

abstract class TeamFailure extends Equatable {
  @override
  List<Object> get props => [];
}

class TeamFailureUnexpected extends TeamFailure {}
