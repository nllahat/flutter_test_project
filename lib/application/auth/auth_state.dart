part of 'auth_bloc.dart';

@immutable
abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthStateInitial extends AuthState {
  const AuthStateInitial();
}

class AuthStateAuthenticated extends AuthState {
  final User user;

  const AuthStateAuthenticated(this.user);

  @override
  List<Object> get props => [user];

  @override
  String toString() => 'AuthStateAuthenticated { user: ${user.id} }';
}

class AuthStateUnauthenticated extends AuthState {
  const AuthStateUnauthenticated();
}
