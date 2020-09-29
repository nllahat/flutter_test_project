import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../domain/auth/i_auth_facade.dart';
import '../../domain/user/entities/user.dart';

part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;
  StreamSubscription<Option<User>> _userSubscription;

  AuthBloc(this._authFacade) : super(const AuthStateInitial()) {
    _userSubscription = _authFacade.userStream.listen(
      (user) => add(AuthEventUserChanged(user)),
    );
  }

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event is AuthEventUserChanged) {
      final Option<User> userOptionFromEvent = event.user;

      yield userOptionFromEvent.fold(
        () => const AuthStateUnauthenticated(),
        (user) => AuthStateAuthenticated(user),
      );
    } else if (event is AuthEventCheckRequested) {
      final Option<User> userOption = await _authFacade.getSignedInUser();

      yield userOption.fold(
        () => const AuthStateUnauthenticated(),
        (user) => AuthStateAuthenticated(user),
      );
    } else if (event is AuthEventSignedOut) {
      await _authFacade.signOut();
    }
  }

  @override
  Future<void> close() {
    _userSubscription?.cancel();
    return super.close();
  }
}
