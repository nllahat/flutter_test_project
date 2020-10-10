// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preferences_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserReferencesDto _$_$_UserReferencesDtoFromJson(Map<String, dynamic> json) {
  return _$_UserReferencesDto(
    id: json['id'] as String,
    leaugeTeamSelection:
        (json['leaugeTeamSelection'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, (e as List)?.map((e) => e as String)?.toList()),
    ),
  );
}

Map<String, dynamic> _$_$_UserReferencesDtoToJson(
        _$_UserReferencesDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'leaugeTeamSelection': instance.leaugeTeamSelection,
    };
