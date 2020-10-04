import 'package:auto_route/auto_route_annotations.dart';

import '../pages/home/home_page.dart';
import '../pages/onboarding/onboarding.dart';
import '../pages/sign_in/sign_in_page.dart';
import '../pages/splash/splash_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: HomePage),
    MaterialRoute(page: Onboarding),
  ],
)
class $Router {}
