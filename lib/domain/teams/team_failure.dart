import 'package:equatable/equatable.dart';

abstract class TeamFailure extends Equatable {}

class TeamFailureUnexpected extends TeamFailure {
  @override
  List<Object> get props => [];
}
