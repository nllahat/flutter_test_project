import 'package:my_proj/domain/core/entity.dart';
import 'package:my_proj/domain/core/value_objects.dart';
import 'package:flutter/foundation.dart';

import 'options_group.dart';

enum EnumQuestionType {
  GROUPED_MULTI_OPTION,
  FREE_TEXT,
}

class Question extends IEntity {
  final UniqueId id;
  final String text;
  final EnumQuestionType type;
  final List<OptionGroup> optionGroups;

  const Question(
      {@required this.id,
      @required this.text,
      @required this.type,
      this.optionGroups});

  @override
  List<Object> get props => [id, text, type, optionGroups];
}
