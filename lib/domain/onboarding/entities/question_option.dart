import 'package:my_proj/domain/core/entity.dart';
import 'package:my_proj/domain/core/value_objects.dart';
import 'package:flutter/foundation.dart';

enum EnumQuestionOptionType { TOGGLE, BUTTON }

class QuestionOption extends IEntity {
  final UniqueId id;
  final EnumQuestionOptionType type;
  final String text;
  final String image;

  const QuestionOption(
      {@required this.id, @required this.type, this.text, this.image});

  @override
  List<Object> get props => [id, type, text, image];
}
