import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../domain/core/value_objects.dart';
import '../../../domain/onboarding/entities/question_option.dart';

class QuestionOptionModel extends Equatable {
  final String id;
  final int type;
  final String text;
  final String image;

  QuestionOptionModel(
      {@required this.id, @required this.type, this.text, this.image});

  factory QuestionOptionModel.fromJson(Map<String, dynamic> json) {
    return QuestionOptionModel(
        id: json['id'],
        type: json['type'],
        text: json['text'],
        image: json['image']);
  }

  QuestionOption toDomain() {
    EnumQuestionOptionType calculatedType =
        type != null && type < EnumQuestionOptionType.values.length
            ? EnumQuestionOptionType.values[type]
            : EnumQuestionOptionType.BUTTON;

    return QuestionOption(
      id: UniqueId.fromExternalId(id),
      type: calculatedType,
      text: text,
      image: image,
    );
  }

  @override
  List<Object> get props => [id, type, text, image];
}
