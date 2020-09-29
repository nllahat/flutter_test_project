// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'application/auth/auth_bloc.dart';
import 'infrastructure/auth/firebase_auth_facade.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'domain/auth/i_auth_facade.dart';
import 'domain/user/repos/i_user_repository.dart';
import 'application/onboarding/onboarding_cubit.dart';
import 'application/onboarding/onboarding_steps/onboarding_steps_cubit.dart';
import 'infrastructure/onboarding/repos/onboarding_steps_repository.dart';
import 'application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'infrastructure/onboarding/data_sources/steps_local_data_source.dart';
import 'infrastructure/user/user_repository.dart';

/// Environment names
const _prod = 'prod';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.factory<StepsLocalDataSource>(() => StepsLocalDataSource());
  gh.factory<UserRepository>(() => UserRepository(), registerFor: {_prod});
  gh.lazySingleton<IAuthFacade>(
      () => FirebaseAuthFacade(
            get<FirebaseAuth>(),
            get<GoogleSignIn>(),
            get<UserRepository>(),
          ),
      registerFor: {_prod});
  gh.factory<OnboardingCubit>(() => OnboardingCubit(
        get<bool>(),
        get<IAuthFacade>(),
        get<IUserRepository>(),
      ));
  gh.factory<OnboardingStepsRepository>(() => OnboardingStepsRepository(
      stepsLocalDataSource: get<StepsLocalDataSource>()));
  gh.factory<SignInFormBloc>(() => SignInFormBloc(get<IAuthFacade>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthFacade>()));
  gh.factory<OnboardingStepsCubit>(
      () => OnboardingStepsCubit(get<OnboardingStepsRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
