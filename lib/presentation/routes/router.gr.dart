// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/onboarding/onboard_page_model.dart';
import '../pages/home/home_page.dart';
import '../pages/onboarding/widgets/onboarding_page.dart';
import '../pages/sign_in/sign_in_page.dart';
import '../pages/splash/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String signInPage = '/sign-in-page';
  static const String homePage = '/home-page';
  static const String onboardingPage = '/onboarding-page';
  static const all = <String>{
    splashPage,
    signInPage,
    homePage,
    onboardingPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.onboardingPage, page: OnboardingPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    SignInPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInPage(),
        settings: data,
      );
    },
    HomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
    OnboardingPage: (data) {
      final args = data.getArgs<OnboardingPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => OnboardingPage(
          key: args.key,
          pageModel: args.pageModel,
          pageController: args.pageController,
        ),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushSignInPage() => push<dynamic>(Routes.signInPage);

  Future<dynamic> pushHomePage() => push<dynamic>(Routes.homePage);

  Future<dynamic> pushOnboardingPage({
    Key key,
    @required OnboardPageModel pageModel,
    @required PageController pageController,
  }) =>
      push<dynamic>(
        Routes.onboardingPage,
        arguments: OnboardingPageArguments(
            key: key, pageModel: pageModel, pageController: pageController),
      );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// OnboardingPage arguments holder class
class OnboardingPageArguments {
  final Key key;
  final OnboardPageModel pageModel;
  final PageController pageController;
  OnboardingPageArguments(
      {this.key, @required this.pageModel, @required this.pageController});
}
