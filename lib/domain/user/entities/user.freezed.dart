// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {@required UniqueId id,
      @required EmailAddress emailAddress,
      @required String fullName,
      bool finishedOnboarding}) {
    return _User(
      id: id,
      emailAddress: emailAddress,
      fullName: fullName,
      finishedOnboarding: finishedOnboarding,
    );
  }
}

// ignore: unused_element
const $User = _$UserTearOff();

mixin _$User {
  UniqueId get id;
  EmailAddress get emailAddress;
  String get fullName;
  bool get finishedOnboarding;

  $UserCopyWith<User> get copyWith;
}

abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      EmailAddress emailAddress,
      String fullName,
      bool finishedOnboarding});
}

class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object id = freezed,
    Object emailAddress = freezed,
    Object fullName = freezed,
    Object finishedOnboarding = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      finishedOnboarding: finishedOnboarding == freezed
          ? _value.finishedOnboarding
          : finishedOnboarding as bool,
    ));
  }
}

abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      EmailAddress emailAddress,
      String fullName,
      bool finishedOnboarding});
}

class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object id = freezed,
    Object emailAddress = freezed,
    Object fullName = freezed,
    Object finishedOnboarding = freezed,
  }) {
    return _then(_User(
      id: id == freezed ? _value.id : id as UniqueId,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      finishedOnboarding: finishedOnboarding == freezed
          ? _value.finishedOnboarding
          : finishedOnboarding as bool,
    ));
  }
}

class _$_User with DiagnosticableTreeMixin implements _User {
  const _$_User(
      {@required this.id,
      @required this.emailAddress,
      @required this.fullName,
      this.finishedOnboarding})
      : assert(id != null),
        assert(emailAddress != null),
        assert(fullName != null);

  @override
  final UniqueId id;
  @override
  final EmailAddress emailAddress;
  @override
  final String fullName;
  @override
  final bool finishedOnboarding;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(id: $id, emailAddress: $emailAddress, fullName: $fullName, finishedOnboarding: $finishedOnboarding)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('emailAddress', emailAddress))
      ..add(DiagnosticsProperty('fullName', fullName))
      ..add(DiagnosticsProperty('finishedOnboarding', finishedOnboarding));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.finishedOnboarding, finishedOnboarding) ||
                const DeepCollectionEquality()
                    .equals(other.finishedOnboarding, finishedOnboarding)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(finishedOnboarding);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {@required UniqueId id,
      @required EmailAddress emailAddress,
      @required String fullName,
      bool finishedOnboarding}) = _$_User;

  @override
  UniqueId get id;
  @override
  EmailAddress get emailAddress;
  @override
  String get fullName;
  @override
  bool get finishedOnboarding;
  @override
  _$UserCopyWith<_User> get copyWith;
}
