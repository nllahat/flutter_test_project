import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/onboarding/onboarding_steps/onboarding_cubit.dart';
import '../../../injection.dart';
import '../../common/page_wrapper.dart';
import 'widgets/onboarding_body.dart';

class OnboardingPage extends StatelessWidget implements PageWrapper {
  @override
  Widget get wrappedPage => BlocProvider<OnboardingStepsCubit>(
        create: (context) => getIt<OnboardingStepsCubit>(),
        child: this,
      );

  @override
  Widget build(BuildContext context) {
    return OnboardingBody();
  }
}
