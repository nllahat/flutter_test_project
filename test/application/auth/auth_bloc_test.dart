import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/mockito.dart';
import 'package:my_proj/application/auth/auth_bloc.dart';
import 'package:my_proj/domain/auth/i_auth_facade.dart';
import 'package:my_proj/domain/auth/user.dart';
import 'package:my_proj/domain/auth/value_objects.dart';
import 'package:my_proj/domain/core/value_objects.dart';

class MockIAuthFacade extends Mock implements IAuthFacade {}

void main() {
  group('AuthBloc', () {
    AuthBloc authBloc;
    MockIAuthFacade mockIAuthFacade;
    User user = User(
        id: UniqueId(),
        emailAddress: EmailAddress('test@test.com'),
        name: 'test');

    setUp(() {
      mockIAuthFacade = MockIAuthFacade();
      authBloc = AuthBloc(mockIAuthFacade);
    });

    test('initial state is AuthStateInitial', () {
      expect(authBloc.initialState, AuthStateInitial());
    });

    group('AuthEventSignedOut', () {
      blocTest<AuthBloc, AuthEvent, AuthState>(
        'emits [AuthStateInitial, AuthStateUnauthenticated] when AuthEventSignedOut is added',
        build: () => authBloc,
        act: (bloc) async => bloc.add(AuthEventSignedOut()),
        expect: <AuthState>[
          AuthStateInitial(),
          AuthStateUnauthenticated(),
        ],
      );
    });

    group('AuthEventCheckRequested', () {
      blocTest<AuthBloc, AuthEvent, AuthState>(
        'should emit AuthStateAuthenticated when there is a signedIn user',
        build: () {
          when(mockIAuthFacade.getSignedInUser()).thenAnswer((_) {
            return Future.value(optionOf(user));
          });
          return authBloc;
        },
        act: (bloc) async => bloc.add(AuthEventCheckRequested()),
        expect: <AuthState>[
          AuthStateInitial(),
          AuthStateAuthenticated(user),
        ],
      );
    });
  });
}
