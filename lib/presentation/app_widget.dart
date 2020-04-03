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
        title: 'Workout Tracker',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          primaryColor: Colors.purple[800],
          accentColor: Colors.blueAccent,
          appBarTheme: ThemeData.light().appBarTheme.copyWith(
                brightness: Brightness.dark,
                color: Colors.purple[900],
                iconTheme: ThemeData.dark().iconTheme,
              ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.blue[900],
            foregroundColor: Colors.white,
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        onGenerateRoute: Router.onGenerateRoute,
        initialRoute: Router.splashPage
      ),
    );
  }
}
