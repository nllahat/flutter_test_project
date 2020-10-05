import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_proj/domain/leagues/league.dart';

import '../../domain/auth/value_objects.dart';
import '../../domain/core/value_objects.dart';
import '../../domain/user/entities/user.dart';

part 'league_dto.freezed.dart';
part 'league_dto.g.dart';

@freezed
abstract class LeagueDto implements _$LeagueDto {
  const LeagueDto._();

  const factory LeagueDto({
    @required String id,
    @required String name,
    @required String logo,
    @required String country,
  }) = _LeagueDto;

  factory LeagueDto.fromDomain(League league) {
    return LeagueDto(
      id: league.id.getOrCrash(),
      name: league.name,
      logo: league.logo,
      country: league.country,
    );
  }

  League toDomain() {
    return League(
        id: UniqueId.fromUniqueString(id),
        name: name,
        logo: logo,
        country: country);
  }

  factory LeagueDto.fromJson(Map<String, dynamic> json) =>
      _$LeagueDtoFromJson(json);

  factory LeagueDto.fromFirestore(DocumentSnapshot doc) {
    return LeagueDto.fromJson(doc.data()).copyWith(id: doc.id);
  }
}
