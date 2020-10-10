import 'package:my_proj/domain/onboarding/onboard_page_model.dart';
import 'package:my_proj/presentation/pages/onboarding/widgets/leagues/league_list.dart';

List<OnboardPageModel> onboardData = [
  OnboardPageModel('Which of the following leagues are your favorite?',
      contentWidget: LeagueList()),
  OnboardPageModel('Which of the following teams are your favorite?',
      contentWidget: LeagueList()),
];
