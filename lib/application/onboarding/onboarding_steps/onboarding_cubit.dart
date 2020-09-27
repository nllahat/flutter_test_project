import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/onboarding/entities/onboarding_step.dart';
import '../../../domain/onboarding/entities/onboarding_step_failure.dart';
import '../../../infrastructure/onboarding/repos/onboarding_steps_repository.dart';

part 'onboarding_state.dart';

class OnboardingStepsCubit extends Cubit<OnboardingStepsState> {
  final OnboardingStepsRepository _onboardingStepsRepository;

  OnboardingStepsCubit(this._onboardingStepsRepository)
      : super(OnboardingStepsInitial());

  Future<void> getSteps() async {
    try {
      emit(OnboardingStepsLoading());

      final steps = await _onboardingStepsRepository.getSteps();
      steps.fold((f) => emit(OnboardingStepsError(onboardingStepsFailure: f)),
          (steps) => emit(OnboardingStepsLoaded(steps)));
    } catch (e) {
      emit(OnboardingStepsError(
          onboardingStepsFailure:
              new OnboardingStepsFailureUnexpected('Loading setps error')));
    }
  }
}
