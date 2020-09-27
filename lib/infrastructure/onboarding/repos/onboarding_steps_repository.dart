import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/onboarding/entities/onboarding_step.dart';
import '../../../domain/onboarding/entities/onboarding_step_failure.dart';
import '../../../domain/onboarding/repos/i_onboarding_steps_repository.dart';
import '../data_sources/steps_local_data_source.dart';

@LazySingleton(as: IOnboardingStepsRepository)
class OnboardingStepsRepository implements IOnboardingStepsRepository {
  final StepsLocalDataSource stepsLocalDataSource;

  OnboardingStepsRepository({@required this.stepsLocalDataSource});

  @override
  Future<Either<OnboardingStepsFailure, List<OnboardingStep>>>
      getSteps() async {
    try {
      final result = await this.stepsLocalDataSource.getSteps();

      final steps = result.map((stepModel) {
        return stepModel.toDomain();
      }).toList();

      return Right(steps);
    } catch (e) {
      return Left(OnboardingStepsFailureUnexpected('getSteps error'));
    }
  }
}
