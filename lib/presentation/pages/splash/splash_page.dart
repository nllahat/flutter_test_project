import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../size_config.dart';
import '../../routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthStateAuthenticated) {
          if (state.user.finishedOnboarding != null &&
              state.user.finishedOnboarding) {
            ExtendedNavigator.of(context).replace(Routes.homePage);
          } else {
            ExtendedNavigator.of(context).replace(Routes.onboarding);
          }
        } else if (state is AuthStateUnauthenticated) {
          ExtendedNavigator.of(context).replace(Routes.onboarding);
        }
      },
      child: _PageWidget(),
    );
  }
}

class _PageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: SplashBody(),
    );*/
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
