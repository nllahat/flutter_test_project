import 'package:equatable/equatable.dart';

abstract class OnboardingStepsFailure extends Equatable {
  final String text;

  OnboardingStepsFailure(this.text);

  @override
  List<Object> get props => [];
}

class OnboardingStepsFailureUnexpected extends OnboardingStepsFailure {
  OnboardingStepsFailureUnexpected(String text) : super(text);
}
