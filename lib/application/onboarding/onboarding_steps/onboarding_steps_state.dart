part of 'onboarding_steps_cubit.dart';

@immutable
abstract class OnboardingStepsState extends Equatable {
  const OnboardingStepsState();

  @override
  List<Object> get props => [];
}

class OnboardingStepsInitial extends OnboardingStepsState {
  const OnboardingStepsInitial();
}

class OnboardingStepsLoading extends OnboardingStepsState {
  const OnboardingStepsLoading();
}

class OnboardingStepsLoaded extends OnboardingStepsState {
  final List<OnboardingStep> onboardingSteps;
  const OnboardingStepsLoaded(this.onboardingSteps);

  @override
  List<Object> get props => [onboardingSteps];
}

class OnboardingStepsError extends OnboardingStepsState {
  final OnboardingStepsFailure onboardingStepsFailure;

  OnboardingStepsError({@required this.onboardingStepsFailure});

  @override
  List<Object> get props => [onboardingStepsFailure];
}
