import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_proj/application/auth/auth_bloc.dart';
import 'package:my_proj/presentation/routes/router.dart';

import '../injection.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (_) =>
              getIt<AuthBloc>()..add(const AuthEventCheckRequested()),
        ),
      ],
      child: MaterialApp(
          title: 'Premier League Stats',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              brightness: Brightness.light,
              primaryColor: Color.fromRGBO(0, 96, 255, 1),
              accentColor: Color.fromRGBO(174, 229, 117, 1),
              tabBarTheme: Theme.of(context).tabBarTheme.copyWith(
                  unselectedLabelColor: Color.fromRGBO(100, 112, 255, 0.4),
                  ),
              textTheme: Theme.of(context).textTheme.copyWith(
                  headline: TextStyle(
                      color: Colors.white,
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.8))),
          onGenerateRoute: Router.onGenerateRoute,
          initialRoute: Router.splashPage),
    );
  }
}
