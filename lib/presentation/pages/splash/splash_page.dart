import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_proj/application/auth/auth_bloc.dart';
import 'package:my_proj/presentation/routes/router.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        /* if (state is AuthStateInitial) {
          return;
        } else if (state is AuthStateAuthenticated) {
          /* return Router.navigator
              .pushReplacementNamed(Router.notesOverviewPage); */
          return;
        } else  */
        if (state is AuthStateUnauthenticated) {
          Navigator.of(context).pushReplacementNamed(Router.signInPage);
        }
      },
      child: _PageWidget(),
    );
  }
}

class _PageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
