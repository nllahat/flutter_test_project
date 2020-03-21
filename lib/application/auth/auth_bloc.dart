import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:my_proj/domain/auth/user.dart';
import '../../domain/auth/i_auth_facade.dart';

part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade);

  @override
  AuthState get initialState => const AuthStateInitial();

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event is AuthEventCheckRequested) {
      final Option<User> userOption = await _authFacade.getSignedInUser();

      yield userOption.fold(
        () => const AuthStateUnauthenticated(),
        (user) => AuthStateAuthenticated(user),
      );
    } else if (event is AuthEventSignedOut) {
      await _authFacade.signOut();
      yield const AuthStateUnauthenticated();
    }
  }
}
