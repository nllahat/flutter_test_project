part of 'sign_in_form_bloc.dart';

@immutable
abstract class SignInFormEvent extends Equatable {
  const SignInFormEvent();

  @override
  List<Object> get props => [];
}

class SignInFormEventEmailChanged extends SignInFormEvent {
  final String emailStr;

  const SignInFormEventEmailChanged({@required this.emailStr});

  @override
  List<Object> get props => [emailStr];
}

class SignInFormEventPasswordChanged extends SignInFormEvent {
  final String passwordStr;

  const SignInFormEventPasswordChanged({@required this.passwordStr});

  @override
  List<Object> get props => [passwordStr];
}

class SignInFormEventRegisterWithEmailAndPassword extends SignInFormEvent {
  const SignInFormEventRegisterWithEmailAndPassword();
}

class SignInFormEventSignInWithEmailAndPassword extends SignInFormEvent {
  const SignInFormEventSignInWithEmailAndPassword();
}

class SignInFormEventSignInWithGoogle extends SignInFormEvent {
  const SignInFormEventSignInWithGoogle();
}
