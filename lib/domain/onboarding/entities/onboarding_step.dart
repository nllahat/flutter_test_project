import 'package:flutter/foundation.dart';

import '../../core/entity.dart';
import '../../core/value_objects.dart';
import 'question.dart';

class OnboardingStep extends IEntity {
  final UniqueId id;
  final String name;
  final List<Question> questions;

  const OnboardingStep(
      {@required this.id, @required this.name, @required this.questions});

  @override
  List<Object> get props => [id, name, questions];

  factory OnboardingStep.empty() => OnboardingStep(
        id: UniqueId(),
        name: '',
        questions: new List(),
      );
}
