import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/onboarding/onboarding_steps/onboarding_steps_cubit.dart';
import '../../../injection.dart';
import 'widgets/onboarding_body.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnboardingStepsCubit>(
      create: (context) {
        var cubit = getIt<OnboardingStepsCubit>();
        cubit.getSteps();
        return cubit;
      },
      child: OnboardingBody(),
    );
  }
}
