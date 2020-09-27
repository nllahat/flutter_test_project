part of 'onboarding_stepper_cubit.dart';

class OnboardingStepperState extends Equatable {
  final int step;
  final int maxSteps;

  OnboardingStepperState({
    @required this.step,
    @required this.maxSteps,
  });

  OnboardingStepperState copyWith({int step, int maxSteps}) {
    return OnboardingStepperState(
      step: step ?? this.step,
      maxSteps: maxSteps ?? this.maxSteps,
    );
  }

  @override
  String toString() =>
      'OnboardingStepperState { step: $step, maxSteps: $maxSteps }';

  @override
  List<Object> get props => [step, maxSteps];
}
