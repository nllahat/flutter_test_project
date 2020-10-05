import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../application/auth/auth_bloc.dart';
import '../injection.dart';
import 'routes/router.gr.dart' as Route;

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(
            create: (_) => getIt<AuthBloc>()..add(AuthEventCheckRequested()),
          ),
        ],
        child: MaterialApp(
            theme: ThemeData(fontFamily: 'Nunito'),
            title: 'onfield',
            debugShowCheckedModeBanner: false,
            builder: ExtendedNavigator(router: Route.Router())));
  }
}
