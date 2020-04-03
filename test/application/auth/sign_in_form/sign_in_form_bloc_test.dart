import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/mockito.dart';
import 'package:my_proj/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:my_proj/domain/auth/i_auth_facade.dart';
import 'package:my_proj/domain/auth/value_objects.dart';

class MockIAuthFacade extends Mock implements IAuthFacade {}

void main() {
  group('SignInFormBloc', () {
    SignInFormBloc signInFormBloc;
    MockIAuthFacade mockIAuthFacade;

    setUp(() {
      mockIAuthFacade = MockIAuthFacade();
      signInFormBloc = SignInFormBloc(mockIAuthFacade);
    });

    test('initial state is Initial', () {
      expect(signInFormBloc.initialState, SignInFormState.initial());
    });

    group('SignInFormEventEmailChanged', () {
      final emailStr = 'test@test.com';
      blocTest<SignInFormBloc, SignInFormEvent, SignInFormState>(
        'emits [SignInFormState.initial()] when SignInFormEventEmailChanged is added',
        build: () => signInFormBloc,
        act: (bloc) async =>
            bloc.add(SignInFormEventEmailChanged(emailStr: emailStr)),
        expect: <SignInFormState>[
          SignInFormState.initial(),
          SignInFormState.initial().copyWith(
              emailAddress: EmailAddress(emailStr),
              authFailureOrSuccessOption: none()),
        ],
      );
    });

    group('SignInFormEventPasswordChanged', () {
      final passwordStr = '123456';
      blocTest<SignInFormBloc, SignInFormEvent, SignInFormState>(
        'emits [SignInFormState.initial(), copyWithInitial] when SignInFormEventPasswordChanged is added',
        build: () => signInFormBloc,
        act: (bloc) async =>
            bloc.add(SignInFormEventPasswordChanged(passwordStr: passwordStr)),
        expect: <SignInFormState>[
          SignInFormState.initial(),
          SignInFormState.initial().copyWith(
              password: Password(passwordStr),
              authFailureOrSuccessOption: none()),
        ],
      );
    });
  });
}
