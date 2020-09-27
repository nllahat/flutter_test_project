import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../domain/core/value_objects.dart';
import '../../../domain/onboarding/entities/question.dart';
import 'options_group_model.dart';

class QuestionModel extends Equatable {
  final String id;
  final String text;
  final int type;
  final List<OptionGroupModel> optionGroups;

  QuestionModel(
      {@required this.id,
      @required this.text,
      @required this.type,
      this.optionGroups});

  factory QuestionModel.fromJson(Map<String, dynamic> json) {
    List<dynamic> groupList = json['optionGroups'] as List;

    return QuestionModel(
        id: json['id'],
        text: json['text'],
        type: json['type'],
        optionGroups: groupList != null
            ? groupList.map((e) => OptionGroupModel.fromJson(e))
            : new List());
  }

  Question toDomain() {
    EnumQuestionType calculatedType =
        type != null && type < EnumQuestionType.values.length
            ? EnumQuestionType.values[type]
            : EnumQuestionType.FREE_TEXT;

    return Question(
      id: UniqueId.fromExternalId(id),
      text: text,
      type: calculatedType,
      optionGroups: optionGroups.map((e) => e.toDomain()),
    );
  }

  @override
  List<Object> get props => [id, text, type, optionGroups];
}
