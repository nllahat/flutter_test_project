part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class AuthEventCheckRequested extends AuthEvent {}

class AuthEventSignedOut extends AuthEvent {}

class AuthEventUserChanged extends AuthEvent {
  final Option<User> user;

  const AuthEventUserChanged(this.user);

  @override
  List<Object> get props => [user];
}
