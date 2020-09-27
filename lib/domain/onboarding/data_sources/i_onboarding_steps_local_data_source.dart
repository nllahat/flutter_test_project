import 'package:my_proj/infrastructure/onboarding/models/onboarding_step_model.dart';

abstract class IOnboardingStepsLocalDataSource {
  Future<List<OnboardingStepModel>> getSteps();
}
