// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_preferences.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserPreferencesTearOff {
  const _$UserPreferencesTearOff();

// ignore: unused_element
  _UserPreferences call(
      {@required UniqueId id,
      @required Map<League, List<Team>> leaugeTeamSelection}) {
    return _UserPreferences(
      id: id,
      leaugeTeamSelection: leaugeTeamSelection,
    );
  }
}

// ignore: unused_element
const $UserPreferences = _$UserPreferencesTearOff();

mixin _$UserPreferences {
  UniqueId get id;
  Map<League, List<Team>> get leaugeTeamSelection;

  $UserPreferencesCopyWith<UserPreferences> get copyWith;
}

abstract class $UserPreferencesCopyWith<$Res> {
  factory $UserPreferencesCopyWith(
          UserPreferences value, $Res Function(UserPreferences) then) =
      _$UserPreferencesCopyWithImpl<$Res>;
  $Res call({UniqueId id, Map<League, List<Team>> leaugeTeamSelection});
}

class _$UserPreferencesCopyWithImpl<$Res>
    implements $UserPreferencesCopyWith<$Res> {
  _$UserPreferencesCopyWithImpl(this._value, this._then);

  final UserPreferences _value;
  // ignore: unused_field
  final $Res Function(UserPreferences) _then;

  @override
  $Res call({
    Object id = freezed,
    Object leaugeTeamSelection = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      leaugeTeamSelection: leaugeTeamSelection == freezed
          ? _value.leaugeTeamSelection
          : leaugeTeamSelection as Map<League, List<Team>>,
    ));
  }
}

abstract class _$UserPreferencesCopyWith<$Res>
    implements $UserPreferencesCopyWith<$Res> {
  factory _$UserPreferencesCopyWith(
          _UserPreferences value, $Res Function(_UserPreferences) then) =
      __$UserPreferencesCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, Map<League, List<Team>> leaugeTeamSelection});
}

class __$UserPreferencesCopyWithImpl<$Res>
    extends _$UserPreferencesCopyWithImpl<$Res>
    implements _$UserPreferencesCopyWith<$Res> {
  __$UserPreferencesCopyWithImpl(
      _UserPreferences _value, $Res Function(_UserPreferences) _then)
      : super(_value, (v) => _then(v as _UserPreferences));

  @override
  _UserPreferences get _value => super._value as _UserPreferences;

  @override
  $Res call({
    Object id = freezed,
    Object leaugeTeamSelection = freezed,
  }) {
    return _then(_UserPreferences(
      id: id == freezed ? _value.id : id as UniqueId,
      leaugeTeamSelection: leaugeTeamSelection == freezed
          ? _value.leaugeTeamSelection
          : leaugeTeamSelection as Map<League, List<Team>>,
    ));
  }
}

class _$_UserPreferences
    with DiagnosticableTreeMixin
    implements _UserPreferences {
  const _$_UserPreferences(
      {@required this.id, @required this.leaugeTeamSelection})
      : assert(id != null),
        assert(leaugeTeamSelection != null);

  @override
  final UniqueId id;
  @override
  final Map<League, List<Team>> leaugeTeamSelection;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserPreferences(id: $id, leaugeTeamSelection: $leaugeTeamSelection)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserPreferences'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('leaugeTeamSelection', leaugeTeamSelection));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserPreferences &&
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
  _$UserPreferencesCopyWith<_UserPreferences> get copyWith =>
      __$UserPreferencesCopyWithImpl<_UserPreferences>(this, _$identity);
}

abstract class _UserPreferences implements UserPreferences {
  const factory _UserPreferences(
          {@required UniqueId id,
          @required Map<League, List<Team>> leaugeTeamSelection}) =
      _$_UserPreferences;

  @override
  UniqueId get id;
  @override
  Map<League, List<Team>> get leaugeTeamSelection;
  @override
  _$UserPreferencesCopyWith<_UserPreferences> get copyWith;
}
