import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/onboarding/onboarding_steps/onboarding_cubit.dart';

class OnboardingBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OnboardingStepsCubit, OnboardingStepsState>(
      listener: (context, state) {
        if (state is OnboardingStepsError) {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text(state.onboardingStepsFailure.text),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is OnboardingStepsInitial) {
          return Container();
        } else if (state is OnboardingStepsLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is OnboardingStepsLoaded) {
          return Container(
            padding: const EdgeInsets.all(10.0),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: state.onboardingSteps.length,
                itemBuilder: (context, index) {
                  final step = state.onboardingSteps[index];

                  return Text(step.name);
                }),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
