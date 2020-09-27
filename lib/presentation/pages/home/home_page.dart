import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../routes/router.gr.dart';
import 'widgets/home_tab_controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (BuildContext context, state) {
        if (state is AuthStateUnauthenticated) {
          ExtendedNavigator.of(context).replace(Routes.signInPage);
        }
      },
      child: HomeTabController(),
    );
  }
}
