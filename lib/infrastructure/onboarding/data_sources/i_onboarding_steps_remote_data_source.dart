import '../models/onboarding_step_model.dart';

abstract class IOnboardingStepsRemoteDataSource {
  Future<List<OnboardingStepModel>> getSteps();
}