part of 'onboarding_bloc.dart';

@freezed
abstract class OnboardingState with _$OnboardingState {
  const factory OnboardingState({
    // Unlike in SignInFormState, here we have an entity which we can readily use for validation
    // instead of storing individual fields.
    @required UserPreferences userPreferences,
    @required List<League> selectedLeagues,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSaving,
    @required
        Option<Either<UserPreferencesFailure, Unit>> saveFailureOrSuccessOption,
  }) = _OnboardingState;

  factory OnboardingState.initial() => OnboardingState(
        userPreferences: UserPreferences.empty(),
        selectedLeagues: List(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
