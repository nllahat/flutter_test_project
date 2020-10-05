// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LeagueDto _$_$_LeagueDtoFromJson(Map<String, dynamic> json) {
  return _$_LeagueDto(
    id: json['id'] as String,
    name: json['name'] as String,
    logo: json['logo'] as String,
    country: json['country'] as String,
  );
}

Map<String, dynamic> _$_$_LeagueDtoToJson(_$_LeagueDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'country': instance.country,
    };
