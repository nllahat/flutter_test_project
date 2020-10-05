// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'league.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LeagueTearOff {
  const _$LeagueTearOff();

// ignore: unused_element
  _League call(
      {@required UniqueId id,
      @required String name,
      @required String logo,
      @required String country}) {
    return _League(
      id: id,
      name: name,
      logo: logo,
      country: country,
    );
  }
}

// ignore: unused_element
const $League = _$LeagueTearOff();

mixin _$League {
  UniqueId get id;
  String get name;
  String get logo;
  String get country;

  $LeagueCopyWith<League> get copyWith;
}

abstract class $LeagueCopyWith<$Res> {
  factory $LeagueCopyWith(League value, $Res Function(League) then) =
      _$LeagueCopyWithImpl<$Res>;
  $Res call({UniqueId id, String name, String logo, String country});
}

class _$LeagueCopyWithImpl<$Res> implements $LeagueCopyWith<$Res> {
  _$LeagueCopyWithImpl(this._value, this._then);

  final League _value;
  // ignore: unused_field
  final $Res Function(League) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object logo = freezed,
    Object country = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as String,
      logo: logo == freezed ? _value.logo : logo as String,
      country: country == freezed ? _value.country : country as String,
    ));
  }
}

abstract class _$LeagueCopyWith<$Res> implements $LeagueCopyWith<$Res> {
  factory _$LeagueCopyWith(_League value, $Res Function(_League) then) =
      __$LeagueCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, String name, String logo, String country});
}

class __$LeagueCopyWithImpl<$Res> extends _$LeagueCopyWithImpl<$Res>
    implements _$LeagueCopyWith<$Res> {
  __$LeagueCopyWithImpl(_League _value, $Res Function(_League) _then)
      : super(_value, (v) => _then(v as _League));

  @override
  _League get _value => super._value as _League;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object logo = freezed,
    Object country = freezed,
  }) {
    return _then(_League(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as String,
      logo: logo == freezed ? _value.logo : logo as String,
      country: country == freezed ? _value.country : country as String,
    ));
  }
}

class _$_League with DiagnosticableTreeMixin implements _League {
  const _$_League(
      {@required this.id,
      @required this.name,
      @required this.logo,
      @required this.country})
      : assert(id != null),
        assert(name != null),
        assert(logo != null),
        assert(country != null);

  @override
  final UniqueId id;
  @override
  final String name;
  @override
  final String logo;
  @override
  final String country;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'League(id: $id, name: $name, logo: $logo, country: $country)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'League'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('logo', logo))
      ..add(DiagnosticsProperty('country', country));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _League &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.logo, logo) ||
                const DeepCollectionEquality().equals(other.logo, logo)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(other.country, country)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(logo) ^
      const DeepCollectionEquality().hash(country);

  @override
  _$LeagueCopyWith<_League> get copyWith =>
      __$LeagueCopyWithImpl<_League>(this, _$identity);
}

abstract class _League implements League {
  const factory _League(
      {@required UniqueId id,
      @required String name,
      @required String logo,
      @required String country}) = _$_League;

  @override
  UniqueId get id;
  @override
  String get name;
  @override
  String get logo;
  @override
  String get country;
  @override
  _$LeagueCopyWith<_League> get copyWith;
}
