part of 'onboarding_bloc.dart';

@freezed
abstract class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.initialized(
      Option<UserPreferences> initialUserPreferencesOption) = _Initialized;
  const factory OnboardingEvent.selectLeague(League selectedLeague) =
      _SelectLeague;
  const factory OnboardingEvent.unselectLeague(League unselectedLeague) =
      _UnselectLeague;
  const factory OnboardingEvent.saved() = _Saved;
  const factory OnboardingEvent.modifyUserPreferences(
      Map<League, List<Team>> leaugeTeamSelection) = _ModifyUserPreferences;
}
