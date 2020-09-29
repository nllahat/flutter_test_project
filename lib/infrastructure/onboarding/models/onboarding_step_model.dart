import 'package:equatable/equatable.dart';
import 'package:my_proj/domain/core/value_objects.dart';
import 'package:my_proj/domain/onboarding/entities/onboarding_step.dart';
import 'package:meta/meta.dart';

class OnboardingStepModel extends Equatable {
  final String id;
  final String name;
  final List<Object> questions;

  OnboardingStepModel(
      {@required this.id, @required this.name, @required this.questions});

  factory OnboardingStepModel.fromJson(Map<String, dynamic> json) {
    return OnboardingStepModel(
        id: json['id'], name: json['name'], questions: json['questions']);
  }

  OnboardingStep toDomain() {
    return OnboardingStep(
      id: UniqueId.fromUniqueString(id),
      name: name,
      questions: questions,
    );
  }

  @override
  List<Object> get props => [id, name, questions];
}
