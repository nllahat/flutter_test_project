import 'package:flutter/foundation.dart';

import '../../core/entity.dart';
import '../../core/value_objects.dart';
import 'question_option.dart';

class OptionGroup extends IEntity {
  final UniqueId id;
  final List<QuestionOption> options;
  final String text;
  final String image;

  const OptionGroup({
    @required this.id,
    @required this.options,
    this.text,
    this.image,
  });

  @override
  List<Object> get props => [id, options, text, image];
}

class GroupVisualProp<T> {
  final T value;
  final bool isVisible;

  const GroupVisualProp({@required this.value, @required this.isVisible});
}
