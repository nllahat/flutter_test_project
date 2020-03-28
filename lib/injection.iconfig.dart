// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:google_sign_in/google_sign_in.dart';
import 'package:my_proj/infrastructure/core/firebase_injectable_module.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_proj/infrastructure/auth/firebase_user_mapper.dart';
import 'package:my_proj/infrastructure/teams/teams_remote_data_source.dart';
import 'package:http/http.dart' as http;
import 'package:my_proj/infrastructure/auth/firebase_auth_facade.dart';
import 'package:my_proj/domain/auth/i_auth_facade.dart';
import 'package:my_proj/infrastructure/teams/teams_repository.dart';
import 'package:my_proj/domain/teams/i_teams_repository.dart';
import 'package:my_proj/application/auth/auth_bloc.dart';
import 'package:my_proj/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:my_proj/application/teams/teams_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  g.registerLazySingleton<GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  g.registerLazySingleton<FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  g.registerLazySingleton<Firestore>(() => firebaseInjectableModule.firestore);
  g.registerLazySingleton<FirebaseUserMapper>(() => FirebaseUserMapper());
  g.registerLazySingleton<TeamsRemoteDataSource>(
      () => TeamsRemoteDataSource(client: g<http.Client>()));
  g.registerLazySingleton<ITeamsRepository>(
      () => TeamsRepository(teamsRemoteDataSource: g<TeamsRemoteDataSource>()));
  g.registerFactory<AuthBloc>(() => AuthBloc(g<IAuthFacade>()));
  g.registerFactory<SignInFormBloc>(() => SignInFormBloc(g<IAuthFacade>()));
  g.registerFactory<TeamsBloc>(() => TeamsBloc(g<ITeamsRepository>()));

  //Register prod Dependencies --------
  if (environment == 'prod') {
    g.registerLazySingleton<IAuthFacade>(() => FirebaseAuthFacade(
          g<FirebaseAuth>(),
          g<GoogleSignIn>(),
          g<FirebaseUserMapper>(),
        ));
  }
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
