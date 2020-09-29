part of 'onboarding_cubit.dart';

@freezed
abstract class OnboardingState with _$OnboardingState {
  const factory OnboardingState.initial() = Initial;
  const factory OnboardingState.required() = Required;
  const factory OnboardingState.done() = Done;
  const factory OnboardingState.skip() = Skip;
}
