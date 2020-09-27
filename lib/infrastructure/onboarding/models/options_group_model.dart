import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../domain/core/value_objects.dart';
import '../../../domain/onboarding/entities/options_group.dart';
import 'question_option_model.dart';

class OptionGroupModel extends Equatable {
  final String id;
  final List<QuestionOptionModel> options;
  final String text;
  final String image;

  OptionGroupModel(
      {@required this.id, @required this.options, this.text, this.image});

  factory OptionGroupModel.fromJson(Map<String, dynamic> json) {
    List<dynamic> optionList = json['options'] as List;

    return OptionGroupModel(
        id: json['id'],
        options: optionList != null
            ? optionList.map((option) => QuestionOptionModel.fromJson(option))
            : new List(),
        text: json['text'],
        image: json['image']);
  }

  OptionGroup toDomain() {
    return OptionGroup(
      id: UniqueId.fromExternalId(id),
      options: options.map((e) => e.toDomain()),
      text: text,
      image: image,
    );
  }

  @override
  List<Object> get props => [id, options, text, image];
}
