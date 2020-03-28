import 'package:flutter/material.dart';
import 'package:my_proj/presentation/pages/sign_in/sign_in_page.dart';
import 'package:my_proj/presentation/pages/splash/splash_page.dart';
import 'package:my_proj/presentation/pages/teams/teams_page.dart';

class Router {
  static const splashPage = '/';
  static const signInPage = '/sign-in-page';
  static const teamsPage = '/teams';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Router.splashPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SplashPage(),
          settings: settings,
        );
      case Router.signInPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SignInPage().wrappedRoute,
          settings: settings,
        );
      case Router.teamsPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => TeamsPage().wrappedRoute,
          settings: settings,
        );
      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          );
        });
    }
  }
}
