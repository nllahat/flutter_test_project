import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/onboarding/data_sources/i_onboarding_steps_local_data_source.dart';
import '../models/onboarding_step_model.dart';

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
