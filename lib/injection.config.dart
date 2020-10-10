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
import 'infrastructure/core/external_sources_injectable_module.dart';
import 'infrastructure/auth/firebase_auth_facade.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'domain/auth/i_auth_facade.dart';
import 'domain/leagues/i_leagues_repository.dart';
import 'domain/teams/i_teams_repository.dart';
import 'domain/user_preferences/i_user_preferences_repository.dart';
import 'application/leagues/leagues_bloc.dart';
import 'infrastructure/leagues/leagues_local_data_source.dart';
import 'infrastructure/leagues/leagues_repository.dart';
import 'application/onboarding/onboarding_bloc.dart';
import 'application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'application/teams/teams_bloc.dart';
import 'infrastructure/teams/teams_local_data_source.dart';
import 'infrastructure/teams/teams_remote_data_source.dart';
import 'infrastructure/teams/teams_repository.dart';
import 'infrastructure/user_preferences/user_preferences_remote_data_source.dart';
import 'infrastructure/user_preferences/user_preferences_repository.dart';
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
  final externalSourcesInjectableModule = _$ExternalSourcesInjectableModule();
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<Client>(() => externalSourcesInjectableModule.httpClient);
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.factory<LeaguesLocalDataSource>(() => LeaguesLocalDataSource());
  gh.factory<TeamsLocalDataSource>(() => TeamsLocalDataSource(),
      registerFor: {_prod});
  gh.factory<TeamsRemoteDataSource>(
      () => TeamsRemoteDataSource(client: get<Client>()),
      registerFor: {_prod});
  gh.factory<UserPreferencesRemoteDataSource>(
      () => UserPreferencesRemoteDataSource());
  gh.factory<UserRepository>(() => UserRepository(), registerFor: {_prod});
  gh.lazySingleton<IAuthFacade>(
      () => FirebaseAuthFacade(
            get<FirebaseAuth>(),
            get<GoogleSignIn>(),
            get<UserRepository>(),
          ),
      registerFor: {_prod});
  gh.lazySingleton<ILeaguesRepository>(
      () => LeaguesRepository(
          leaguesLocalDataSource: get<LeaguesLocalDataSource>()),
      registerFor: {_prod});
  gh.lazySingleton<ITeamsRepository>(
      () => TeamsRepository(get<TeamsLocalDataSource>()),
      registerFor: {_prod});
  gh.lazySingleton<IUserPreferencesRepository>(
      () => UserPreferencesRepository(
            get<UserPreferencesRemoteDataSource>(),
            get<FirebaseFirestore>(),
            get<ITeamsRepository>(),
            get<ILeaguesRepository>(),
          ),
      registerFor: {_prod});
  gh.factory<LeaguesBloc>(() => LeaguesBloc(get<ILeaguesRepository>()));
  gh.factory<OnboardingBloc>(
      () => OnboardingBloc(get<IUserPreferencesRepository>()));
  gh.factory<SignInFormBloc>(() => SignInFormBloc(get<IAuthFacade>()));
  gh.factory<TeamsBloc>(() => TeamsBloc(get<ITeamsRepository>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthFacade>()));
  return get;
}

class _$ExternalSourcesInjectableModule
    extends ExternalSourcesInjectableModule {}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
