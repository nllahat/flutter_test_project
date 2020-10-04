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
import 'domain/teams/i_teams_repository.dart';
import 'application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'application/teams/teams_bloc.dart';
import 'infrastructure/teams/teams_remote_data_source.dart';
import 'infrastructure/teams/teams_repository.dart';
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
  gh.factory<TeamsRemoteDataSource>(
      () => TeamsRemoteDataSource(client: get<Client>()),
      registerFor: {_prod});
  gh.factory<UserRepository>(() => UserRepository(), registerFor: {_prod});
  gh.lazySingleton<IAuthFacade>(
      () => FirebaseAuthFacade(
            get<FirebaseAuth>(),
            get<GoogleSignIn>(),
            get<UserRepository>(),
          ),
      registerFor: {_prod});
  gh.lazySingleton<ITeamsRepository>(
      () =>
          TeamsRepository(teamsRemoteDataSource: get<TeamsRemoteDataSource>()),
      registerFor: {_prod});
  gh.factory<SignInFormBloc>(() => SignInFormBloc(get<IAuthFacade>()));
  gh.factory<TeamsBloc>(() => TeamsBloc(get<ITeamsRepository>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthFacade>()));
  return get;
}

class _$ExternalSourcesInjectableModule
    extends ExternalSourcesInjectableModule {}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
