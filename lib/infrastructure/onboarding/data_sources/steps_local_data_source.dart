import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../models/onboarding_step_model.dart';
import 'i_onboarding_steps_local_data_source.dart';

@injectable
@LazySingleton(as: IOnboardingStepsLocalDataSource)
class StepsLocalDataSource implements IOnboardingStepsLocalDataSource {
  StepsLocalDataSource();

  Future<String> _loadFromAsset() async {
    return rootBundle.loadString("assets/steps.json");
  }

  @override
  Future<List<OnboardingStepModel>> getSteps() async {
    String jsonString = await _loadFromAsset();
    final List<OnboardingStepModel> jsonResponse = jsonDecode(jsonString);

    return jsonResponse;
  }
}
