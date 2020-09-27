import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_stepper_state.dart';

class OnboardingStepperCubit extends Cubit<OnboardingStepperState> {
  final int maxSteps;

  OnboardingStepperCubit({@required this.maxSteps})
      : super(OnboardingStepperState(maxSteps: maxSteps, step: 0));

  void nextStep(int stepIndex) => emit(state.copyWith(step: stepIndex));
}
