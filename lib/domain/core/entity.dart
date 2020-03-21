import 'package:equatable/equatable.dart';

import 'value_objects.dart';

abstract class IEntity extends Equatable {
  UniqueId get id;

  // If the subclasses have some properties, they'll get passed to this constructor
  // so that Equatable can perform value comparison.
  IEntity([List properties = const <dynamic>[]]) : super();
}
