// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:http/http.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'application/auth/auth_bloc.dart';
import 'infrastructure/auth/firebase_auth_facade.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'infrastructure/auth/firebase_user_mapper.dart';
import 'domain/auth/i_auth_facade.dart';
import 'domain/matches/i_matches_remote_data_source.dart';
import 'domain/matches/i_matches_repository.dart';
import 'domain/onboarding/data_sources/i_onboarding_steps_local_data_source.dart';
import 'domain/onboarding/repos/i_onboarding_steps_repository.dart';
import 'domain/teams/i_teams_remote_data_source.dart';
import 'domain/teams/i_teams_repository.dart';
import 'application/matches/matches_bloc.dart';
import 'infrastructure/core/matches_injectable_module.dart';
import 'infrastructure/matches/matches_remote_data_source.dart';
import 'infrastructure/matches/matches_repository.dart';
import 'infrastructure/onboarding/repos/onboarding_steps_repository.dart';
import 'application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'infrastructure/onboarding/data_sources/steps_local_data_source.dart';
import 'application/teams/teams_bloc.dart';
import 'infrastructure/core/teams_injectable_module.dart';
import 'infrastructure/teams/teams_remote_data_source.dart';
import 'infrastructure/teams/teams_repository.dart';

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
  final matchesInjectableModule = _$MatchesInjectableModule();
  final teamsInjectableModule = _$TeamsInjectableModule();
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<FirebaseUserMapper>(() => FirebaseUserMapper());
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<IAuthFacade>(
      () => FirebaseAuthFacade(
            get<FirebaseAuth>(),
            get<GoogleSignIn>(),
            get<FirebaseUserMapper>(),
          ),
      registerFor: {_prod});
  gh.lazySingleton<IMatchesRemoteDataSource>(
      () => MatchesRemoteDataSource(client: get<Client>()),
      registerFor: {_prod});
  gh.lazySingleton<IOnboardingStepsLocalDataSource>(
      () => StepsLocalDataSource());
  gh.lazySingleton<IOnboardingStepsRepository>(() => OnboardingStepsRepository(
      stepsLocalDataSource: get<StepsLocalDataSource>()));
  gh.lazySingleton<ITeamsRemoteDataSource>(
      () => TeamsRemoteDataSource(client: get<Client>()),
      registerFor: {_prod});
  gh.lazySingleton<MatchesRemoteDataSource>(
      () => matchesInjectableModule.matchesRemoteDataSource);
  gh.factory<SignInFormBloc>(() => SignInFormBloc(get<IAuthFacade>()));
  gh.lazySingleton<TeamsRemoteDataSource>(
      () => teamsInjectableModule.teamsRemoteDataSource);
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthFacade>()));
  gh.lazySingleton<IMatchesRepository>(
      () => MatchesRepository(
          matchesRemoteDataSource: get<MatchesRemoteDataSource>()),
      registerFor: {_prod});
  gh.lazySingleton<ITeamsRepository>(
      () =>
          TeamsRepository(teamsRemoteDataSource: get<TeamsRemoteDataSource>()),
      registerFor: {_prod});
  gh.factory<MatchesBloc>(() => MatchesBloc(get<IMatchesRepository>()));
  gh.factory<TeamsBloc>(() => TeamsBloc(get<ITeamsRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}

class _$MatchesInjectableModule extends MatchesInjectableModule {}

class _$TeamsInjectableModule extends TeamsInjectableModule {}
