import 'package:flutter/foundation.dart';
import 'package:my_proj/domain/core/entity.dart';
import 'package:my_proj/domain/core/value_objects.dart';

class Team extends IEntity {
  final UniqueId id;
  final String name;
  final String logoUrl;

  const Team(
      {@required this.id,
      @required this.name,
      @required this.logoUrl});

  @override
  List<Object> get props => [id, name, logoUrl];

  factory Team.empty() =>
      Team(id: UniqueId(), name: '', logoUrl: '');
}
