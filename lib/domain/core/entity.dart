import 'package:equatable/equatable.dart';

import 'value_objects.dart';

abstract class IEntity extends Equatable {
  UniqueId get id;

  const IEntity();
}
