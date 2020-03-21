import 'package:flutter/material.dart';
import 'package:my_proj/presentation/pages/sign_in/sign_in_page.dart';
import 'package:my_proj/presentation/pages/splash/splash_page.dart';

class Router {
  static const splashPage = '/';
  static const signInPage = '/sign-in-page';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Router.splashPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SplashPage(),
          settings: settings,
        );
      case Router.signInPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SignInPage(),
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
