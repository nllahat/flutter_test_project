part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent extends Equatable {
  const AuthEvent();
}

class AuthEventCheckRequested extends AuthEvent {
  const AuthEventCheckRequested();
  @override
  List<Object> get props => [];
}

class AuthEventSignedOut extends AuthEvent {
  @override
  List<Object> get props => [];
}
