import 'package:dartz/dartz.dart';

import '../entities/onboarding_step.dart';
import '../entities/onboarding_step_failure.dart';

abstract class IOnboardingStepsRepository {
  Future<Either<OnboardingStepsFailure, List<OnboardingStep>>> getSteps();
}
