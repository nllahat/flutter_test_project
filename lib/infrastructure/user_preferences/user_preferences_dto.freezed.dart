// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_preferences_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserReferencesDto _$UserReferencesDtoFromJson(Map<String, dynamic> json) {
  return _UserReferencesDto.fromJson(json);
}

class _$UserReferencesDtoTearOff {
  const _$UserReferencesDtoTearOff();

// ignore: unused_element
  _UserReferencesDto call(
      {@required String id,
      @required Map<String, List<String>> leaugeTeamSelection}) {
    return _UserReferencesDto(
      id: id,
      leaugeTeamSelection: leaugeTeamSelection,
    );
  }
}

// ignore: unused_element
const $UserReferencesDto = _$UserReferencesDtoTearOff();

mixin _$UserReferencesDto {
  String get id;
  Map<String, List<String>> get leaugeTeamSelection;

  Map<String, dynamic> toJson();
  $UserReferencesDtoCopyWith<UserReferencesDto> get copyWith;
}

abstract class $UserReferencesDtoCopyWith<$Res> {
  factory $UserReferencesDtoCopyWith(
          UserReferencesDto value, $Res Function(UserReferencesDto) then) =
      _$UserReferencesDtoCopyWithImpl<$Res>;
  $Res call({String id, Map<String, List<String>> leaugeTeamSelection});
}

class _$UserReferencesDtoCopyWithImpl<$Res>
    implements $UserReferencesDtoCopyWith<$Res> {
  _$UserReferencesDtoCopyWithImpl(this._value, this._then);

  final UserReferencesDto _value;
  // ignore: unused_field
  final $Res Function(UserReferencesDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object leaugeTeamSelection = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      leaugeTeamSelection: leaugeTeamSelection == freezed
          ? _value.leaugeTeamSelection
          : leaugeTeamSelection as Map<String, List<String>>,
    ));
  }
}

abstract class _$UserReferencesDtoCopyWith<$Res>
    implements $UserReferencesDtoCopyWith<$Res> {
  factory _$UserReferencesDtoCopyWith(
          _UserReferencesDto value, $Res Function(_UserReferencesDto) then) =
      __$UserReferencesDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, Map<String, List<String>> leaugeTeamSelection});
}

class __$UserReferencesDtoCopyWithImpl<$Res>
    extends _$UserReferencesDtoCopyWithImpl<$Res>
    implements _$UserReferencesDtoCopyWith<$Res> {
  __$UserReferencesDtoCopyWithImpl(
      _UserReferencesDto _value, $Res Function(_UserReferencesDto) _then)
      : super(_value, (v) => _then(v as _UserReferencesDto));

  @override
  _UserReferencesDto get _value => super._value as _UserReferencesDto;

  @override
  $Res call({
    Object id = freezed,
    Object leaugeTeamSelection = freezed,
  }) {
    return _then(_UserReferencesDto(
      id: id == freezed ? _value.id : id as String,
      leaugeTeamSelection: leaugeTeamSelection == freezed
          ? _value.leaugeTeamSelection
          : leaugeTeamSelection as Map<String, List<String>>,
    ));
  }
}

@JsonSerializable()
class _$_UserReferencesDto extends _UserReferencesDto {
  const _$_UserReferencesDto(
      {@required this.id, @required this.leaugeTeamSelection})
      : assert(id != null),
        assert(leaugeTeamSelection != null),
        super._();

  factory _$_UserReferencesDto.fromJson(Map<String, dynamic> json) =>
      _$_$_UserReferencesDtoFromJson(json);

  @override
  final String id;
  @override
  final Map<String, List<String>> leaugeTeamSelection;

  @override
  String toString() {
    return 'UserReferencesDto(id: $id, leaugeTeamSelection: $leaugeTeamSelection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserReferencesDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.leaugeTeamSelection, leaugeTeamSelection) ||
                const DeepCollectionEquality()
                    .equals(other.leaugeTeamSelection, leaugeTeamSelection)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(leaugeTeamSelection);

  @override
  _$UserReferencesDtoCopyWith<_UserReferencesDto> get copyWith =>
      __$UserReferencesDtoCopyWithImpl<_UserReferencesDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserReferencesDtoToJson(this);
  }
}

abstract class _UserReferencesDto extends UserReferencesDto {
  const _UserReferencesDto._() : super._();
  const factory _UserReferencesDto(
          {@required String id,
          @required Map<String, List<String>> leaugeTeamSelection}) =
      _$_UserReferencesDto;

  factory _UserReferencesDto.fromJson(Map<String, dynamic> json) =
      _$_UserReferencesDto.fromJson;

  @override
  String get id;
  @override
  Map<String, List<String>> get leaugeTeamSelection;
  @override
  _$UserReferencesDtoCopyWith<_UserReferencesDto> get copyWith;
}
