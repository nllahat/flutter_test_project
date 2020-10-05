// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'leagues_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LeaguesEventTearOff {
  const _$LeaguesEventTearOff();

// ignore: unused_element
  _GetAllStarted getAllStarted() {
    return const _GetAllStarted();
  }

// ignore: unused_element
  _LeaguesReceived leaguesReceived(
      Either<LeagueFailure, List<League>> failureOrLeagues) {
    return _LeaguesReceived(
      failureOrLeagues,
    );
  }
}

// ignore: unused_element
const $LeaguesEvent = _$LeaguesEventTearOff();

mixin _$LeaguesEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllStarted(),
    @required
        Result leaguesReceived(
            Either<LeagueFailure, List<League>> failureOrLeagues),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllStarted(),
    Result leaguesReceived(
        Either<LeagueFailure, List<League>> failureOrLeagues),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllStarted(_GetAllStarted value),
    @required Result leaguesReceived(_LeaguesReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllStarted(_GetAllStarted value),
    Result leaguesReceived(_LeaguesReceived value),
    @required Result orElse(),
  });
}

abstract class $LeaguesEventCopyWith<$Res> {
  factory $LeaguesEventCopyWith(
          LeaguesEvent value, $Res Function(LeaguesEvent) then) =
      _$LeaguesEventCopyWithImpl<$Res>;
}

class _$LeaguesEventCopyWithImpl<$Res> implements $LeaguesEventCopyWith<$Res> {
  _$LeaguesEventCopyWithImpl(this._value, this._then);

  final LeaguesEvent _value;
  // ignore: unused_field
  final $Res Function(LeaguesEvent) _then;
}

abstract class _$GetAllStartedCopyWith<$Res> {
  factory _$GetAllStartedCopyWith(
          _GetAllStarted value, $Res Function(_GetAllStarted) then) =
      __$GetAllStartedCopyWithImpl<$Res>;
}

class __$GetAllStartedCopyWithImpl<$Res>
    extends _$LeaguesEventCopyWithImpl<$Res>
    implements _$GetAllStartedCopyWith<$Res> {
  __$GetAllStartedCopyWithImpl(
      _GetAllStarted _value, $Res Function(_GetAllStarted) _then)
      : super(_value, (v) => _then(v as _GetAllStarted));

  @override
  _GetAllStarted get _value => super._value as _GetAllStarted;
}

class _$_GetAllStarted implements _GetAllStarted {
  const _$_GetAllStarted();

  @override
  String toString() {
    return 'LeaguesEvent.getAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllStarted(),
    @required
        Result leaguesReceived(
            Either<LeagueFailure, List<League>> failureOrLeagues),
  }) {
    assert(getAllStarted != null);
    assert(leaguesReceived != null);
    return getAllStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllStarted(),
    Result leaguesReceived(
        Either<LeagueFailure, List<League>> failureOrLeagues),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllStarted != null) {
      return getAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllStarted(_GetAllStarted value),
    @required Result leaguesReceived(_LeaguesReceived value),
  }) {
    assert(getAllStarted != null);
    assert(leaguesReceived != null);
    return getAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllStarted(_GetAllStarted value),
    Result leaguesReceived(_LeaguesReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllStarted != null) {
      return getAllStarted(this);
    }
    return orElse();
  }
}

abstract class _GetAllStarted implements LeaguesEvent {
  const factory _GetAllStarted() = _$_GetAllStarted;
}

abstract class _$LeaguesReceivedCopyWith<$Res> {
  factory _$LeaguesReceivedCopyWith(
          _LeaguesReceived value, $Res Function(_LeaguesReceived) then) =
      __$LeaguesReceivedCopyWithImpl<$Res>;
  $Res call({Either<LeagueFailure, List<League>> failureOrLeagues});
}

class __$LeaguesReceivedCopyWithImpl<$Res>
    extends _$LeaguesEventCopyWithImpl<$Res>
    implements _$LeaguesReceivedCopyWith<$Res> {
  __$LeaguesReceivedCopyWithImpl(
      _LeaguesReceived _value, $Res Function(_LeaguesReceived) _then)
      : super(_value, (v) => _then(v as _LeaguesReceived));

  @override
  _LeaguesReceived get _value => super._value as _LeaguesReceived;

  @override
  $Res call({
    Object failureOrLeagues = freezed,
  }) {
    return _then(_LeaguesReceived(
      failureOrLeagues == freezed
          ? _value.failureOrLeagues
          : failureOrLeagues as Either<LeagueFailure, List<League>>,
    ));
  }
}

class _$_LeaguesReceived implements _LeaguesReceived {
  const _$_LeaguesReceived(this.failureOrLeagues)
      : assert(failureOrLeagues != null);

  @override
  final Either<LeagueFailure, List<League>> failureOrLeagues;

  @override
  String toString() {
    return 'LeaguesEvent.leaguesReceived(failureOrLeagues: $failureOrLeagues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LeaguesReceived &&
            (identical(other.failureOrLeagues, failureOrLeagues) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrLeagues, failureOrLeagues)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrLeagues);

  @override
  _$LeaguesReceivedCopyWith<_LeaguesReceived> get copyWith =>
      __$LeaguesReceivedCopyWithImpl<_LeaguesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllStarted(),
    @required
        Result leaguesReceived(
            Either<LeagueFailure, List<League>> failureOrLeagues),
  }) {
    assert(getAllStarted != null);
    assert(leaguesReceived != null);
    return leaguesReceived(failureOrLeagues);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllStarted(),
    Result leaguesReceived(
        Either<LeagueFailure, List<League>> failureOrLeagues),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (leaguesReceived != null) {
      return leaguesReceived(failureOrLeagues);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllStarted(_GetAllStarted value),
    @required Result leaguesReceived(_LeaguesReceived value),
  }) {
    assert(getAllStarted != null);
    assert(leaguesReceived != null);
    return leaguesReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllStarted(_GetAllStarted value),
    Result leaguesReceived(_LeaguesReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (leaguesReceived != null) {
      return leaguesReceived(this);
    }
    return orElse();
  }
}

abstract class _LeaguesReceived implements LeaguesEvent {
  const factory _LeaguesReceived(
          Either<LeagueFailure, List<League>> failureOrLeagues) =
      _$_LeaguesReceived;

  Either<LeagueFailure, List<League>> get failureOrLeagues;
  _$LeaguesReceivedCopyWith<_LeaguesReceived> get copyWith;
}

class _$LeagueStateTearOff {
  const _$LeagueStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  DataTransferInProgress loadInProgress() {
    return const DataTransferInProgress();
  }

// ignore: unused_element
  LoadSuccess loadSuccess(List<League> leagues) {
    return LoadSuccess(
      leagues,
    );
  }

// ignore: unused_element
  LoadFailure loadFailure(LeagueFailure leagueFailure) {
    return LoadFailure(
      leagueFailure,
    );
  }
}

// ignore: unused_element
const $LeagueState = _$LeagueStateTearOff();

mixin _$LeagueState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<League> leagues),
    @required Result loadFailure(LeagueFailure leagueFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<League> leagues),
    Result loadFailure(LeagueFailure leagueFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  });
}

abstract class $LeagueStateCopyWith<$Res> {
  factory $LeagueStateCopyWith(
          LeagueState value, $Res Function(LeagueState) then) =
      _$LeagueStateCopyWithImpl<$Res>;
}

class _$LeagueStateCopyWithImpl<$Res> implements $LeagueStateCopyWith<$Res> {
  _$LeagueStateCopyWithImpl(this._value, this._then);

  final LeagueState _value;
  // ignore: unused_field
  final $Res Function(LeagueState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$LeagueStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'LeagueState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<League> leagues),
    @required Result loadFailure(LeagueFailure leagueFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<League> leagues),
    Result loadFailure(LeagueFailure leagueFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements LeagueState {
  const factory Initial() = _$Initial;
}

abstract class $DataTransferInProgressCopyWith<$Res> {
  factory $DataTransferInProgressCopyWith(DataTransferInProgress value,
          $Res Function(DataTransferInProgress) then) =
      _$DataTransferInProgressCopyWithImpl<$Res>;
}

class _$DataTransferInProgressCopyWithImpl<$Res>
    extends _$LeagueStateCopyWithImpl<$Res>
    implements $DataTransferInProgressCopyWith<$Res> {
  _$DataTransferInProgressCopyWithImpl(DataTransferInProgress _value,
      $Res Function(DataTransferInProgress) _then)
      : super(_value, (v) => _then(v as DataTransferInProgress));

  @override
  DataTransferInProgress get _value => super._value as DataTransferInProgress;
}

class _$DataTransferInProgress implements DataTransferInProgress {
  const _$DataTransferInProgress();

  @override
  String toString() {
    return 'LeagueState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DataTransferInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<League> leagues),
    @required Result loadFailure(LeagueFailure leagueFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<League> leagues),
    Result loadFailure(LeagueFailure leagueFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class DataTransferInProgress implements LeagueState {
  const factory DataTransferInProgress() = _$DataTransferInProgress;
}

abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<League> leagues});
}

class _$LoadSuccessCopyWithImpl<$Res> extends _$LeagueStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object leagues = freezed,
  }) {
    return _then(LoadSuccess(
      leagues == freezed ? _value.leagues : leagues as List<League>,
    ));
  }
}

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.leagues) : assert(leagues != null);

  @override
  final List<League> leagues;

  @override
  String toString() {
    return 'LeagueState.loadSuccess(leagues: $leagues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.leagues, leagues) ||
                const DeepCollectionEquality().equals(other.leagues, leagues)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(leagues);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<League> leagues),
    @required Result loadFailure(LeagueFailure leagueFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(leagues);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<League> leagues),
    Result loadFailure(LeagueFailure leagueFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(leagues);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements LeagueState {
  const factory LoadSuccess(List<League> leagues) = _$LoadSuccess;

  List<League> get leagues;
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({LeagueFailure leagueFailure});

  $LeagueFailureCopyWith<$Res> get leagueFailure;
}

class _$LoadFailureCopyWithImpl<$Res> extends _$LeagueStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object leagueFailure = freezed,
  }) {
    return _then(LoadFailure(
      leagueFailure == freezed
          ? _value.leagueFailure
          : leagueFailure as LeagueFailure,
    ));
  }

  @override
  $LeagueFailureCopyWith<$Res> get leagueFailure {
    if (_value.leagueFailure == null) {
      return null;
    }
    return $LeagueFailureCopyWith<$Res>(_value.leagueFailure, (value) {
      return _then(_value.copyWith(leagueFailure: value));
    });
  }
}

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.leagueFailure) : assert(leagueFailure != null);

  @override
  final LeagueFailure leagueFailure;

  @override
  String toString() {
    return 'LeagueState.loadFailure(leagueFailure: $leagueFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.leagueFailure, leagueFailure) ||
                const DeepCollectionEquality()
                    .equals(other.leagueFailure, leagueFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(leagueFailure);

  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<League> leagues),
    @required Result loadFailure(LeagueFailure leagueFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(leagueFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<League> leagues),
    Result loadFailure(LeagueFailure leagueFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(leagueFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements LeagueState {
  const factory LoadFailure(LeagueFailure leagueFailure) = _$LoadFailure;

  LeagueFailure get leagueFailure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
