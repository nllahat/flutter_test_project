import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_proj/domain/auth/value_objects.dart';
import 'package:my_proj/domain/core/value_objects.dart';

part 'league.freezed.dart';

@freezed
abstract class League with _$League {
  const factory League({
    @required UniqueId id,
    @required String name,
    @required String logo,
    @required String country,
  }) = _League;

  factory League.empty() =>
      League(id: UniqueId.empty(), name: '', logo: '', country: '');
}
