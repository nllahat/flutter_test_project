import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_proj/application/auth/auth_bloc.dart';
import 'package:my_proj/application/teams/teams_bloc.dart';
import 'package:my_proj/presentation/common/router_wrapper.dart';
import 'package:my_proj/presentation/routes/router.dart';

import '../../../injection.dart';

class TeamsPage extends StatelessWidget implements RouteWrapper {
  @override
  Widget get wrappedRoute => BlocProvider<TeamsBloc>(
        create: (context) => getIt<TeamsBloc>()..add(const GetAllStarted('2')),
        child: this,
      );

  @override
  Widget build(BuildContext context) {
    return BlocListener<TeamsBloc, TeamsState>(
      listener: (BuildContext context, state) {
        if (state is AuthStateUnauthenticated) {
          Navigator.of(context).pushReplacementNamed(Router.signInPage);
        }
      },
      child: Scaffold(
        appBar: AppBar(
            title: const Text('Teams'),
            leading: IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                context.bloc<AuthBloc>().add(const AuthEventSignedOut());
              },
            )),
        body: Container(),
      ),
    );
  }
}
