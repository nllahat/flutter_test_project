// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'teams_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TeamsEventTearOff {
  const _$TeamsEventTearOff();

// ignore: unused_element
  _GetAllStarted getAllStarted(List<String> leagueIds) {
    return _GetAllStarted(
      leagueIds,
    );
  }

// ignore: unused_element
  _TeamsReceived teamsReceived(
      Either<TeamFailure, Map<String, List<Team>>> failureOrTeams) {
    return _TeamsReceived(
      failureOrTeams,
    );
  }
}

// ignore: unused_element
const $TeamsEvent = _$TeamsEventTearOff();

mixin _$TeamsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllStarted(List<String> leagueIds),
    @required
        Result teamsReceived(
            Either<TeamFailure, Map<String, List<Team>>> failureOrTeams),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllStarted(List<String> leagueIds),
    Result teamsReceived(
        Either<TeamFailure, Map<String, List<Team>>> failureOrTeams),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllStarted(_GetAllStarted value),
    @required Result teamsReceived(_TeamsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllStarted(_GetAllStarted value),
    Result teamsReceived(_TeamsReceived value),
    @required Result orElse(),
  });
}

abstract class $TeamsEventCopyWith<$Res> {
  factory $TeamsEventCopyWith(
          TeamsEvent value, $Res Function(TeamsEvent) then) =
      _$TeamsEventCopyWithImpl<$Res>;
}

class _$TeamsEventCopyWithImpl<$Res> implements $TeamsEventCopyWith<$Res> {
  _$TeamsEventCopyWithImpl(this._value, this._then);

  final TeamsEvent _value;
  // ignore: unused_field
  final $Res Function(TeamsEvent) _then;
}

abstract class _$GetAllStartedCopyWith<$Res> {
  factory _$GetAllStartedCopyWith(
          _GetAllStarted value, $Res Function(_GetAllStarted) then) =
      __$GetAllStartedCopyWithImpl<$Res>;
  $Res call({List<String> leagueIds});
}

class __$GetAllStartedCopyWithImpl<$Res> extends _$TeamsEventCopyWithImpl<$Res>
    implements _$GetAllStartedCopyWith<$Res> {
  __$GetAllStartedCopyWithImpl(
      _GetAllStarted _value, $Res Function(_GetAllStarted) _then)
      : super(_value, (v) => _then(v as _GetAllStarted));

  @override
  _GetAllStarted get _value => super._value as _GetAllStarted;

  @override
  $Res call({
    Object leagueIds = freezed,
  }) {
    return _then(_GetAllStarted(
      leagueIds == freezed ? _value.leagueIds : leagueIds as List<String>,
    ));
  }
}

class _$_GetAllStarted implements _GetAllStarted {
  const _$_GetAllStarted(this.leagueIds) : assert(leagueIds != null);

  @override
  final List<String> leagueIds;

  @override
  String toString() {
    return 'TeamsEvent.getAllStarted(leagueIds: $leagueIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetAllStarted &&
            (identical(other.leagueIds, leagueIds) ||
                const DeepCollectionEquality()
                    .equals(other.leagueIds, leagueIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(leagueIds);

  @override
  _$GetAllStartedCopyWith<_GetAllStarted> get copyWith =>
      __$GetAllStartedCopyWithImpl<_GetAllStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllStarted(List<String> leagueIds),
    @required
        Result teamsReceived(
            Either<TeamFailure, Map<String, List<Team>>> failureOrTeams),
  }) {
    assert(getAllStarted != null);
    assert(teamsReceived != null);
    return getAllStarted(leagueIds);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllStarted(List<String> leagueIds),
    Result teamsReceived(
        Either<TeamFailure, Map<String, List<Team>>> failureOrTeams),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllStarted != null) {
      return getAllStarted(leagueIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllStarted(_GetAllStarted value),
    @required Result teamsReceived(_TeamsReceived value),
  }) {
    assert(getAllStarted != null);
    assert(teamsReceived != null);
    return getAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllStarted(_GetAllStarted value),
    Result teamsReceived(_TeamsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllStarted != null) {
      return getAllStarted(this);
    }
    return orElse();
  }
}

abstract class _GetAllStarted implements TeamsEvent {
  const factory _GetAllStarted(List<String> leagueIds) = _$_GetAllStarted;

  List<String> get leagueIds;
  _$GetAllStartedCopyWith<_GetAllStarted> get copyWith;
}

abstract class _$TeamsReceivedCopyWith<$Res> {
  factory _$TeamsReceivedCopyWith(
          _TeamsReceived value, $Res Function(_TeamsReceived) then) =
      __$TeamsReceivedCopyWithImpl<$Res>;
  $Res call({Either<TeamFailure, Map<String, List<Team>>> failureOrTeams});
}

class __$TeamsReceivedCopyWithImpl<$Res> extends _$TeamsEventCopyWithImpl<$Res>
    implements _$TeamsReceivedCopyWith<$Res> {
  __$TeamsReceivedCopyWithImpl(
      _TeamsReceived _value, $Res Function(_TeamsReceived) _then)
      : super(_value, (v) => _then(v as _TeamsReceived));

  @override
  _TeamsReceived get _value => super._value as _TeamsReceived;

  @override
  $Res call({
    Object failureOrTeams = freezed,
  }) {
    return _then(_TeamsReceived(
      failureOrTeams == freezed
          ? _value.failureOrTeams
          : failureOrTeams as Either<TeamFailure, Map<String, List<Team>>>,
    ));
  }
}

class _$_TeamsReceived implements _TeamsReceived {
  const _$_TeamsReceived(this.failureOrTeams) : assert(failureOrTeams != null);

  @override
  final Either<TeamFailure, Map<String, List<Team>>> failureOrTeams;

  @override
  String toString() {
    return 'TeamsEvent.teamsReceived(failureOrTeams: $failureOrTeams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TeamsReceived &&
            (identical(other.failureOrTeams, failureOrTeams) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrTeams, failureOrTeams)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrTeams);

  @override
  _$TeamsReceivedCopyWith<_TeamsReceived> get copyWith =>
      __$TeamsReceivedCopyWithImpl<_TeamsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllStarted(List<String> leagueIds),
    @required
        Result teamsReceived(
            Either<TeamFailure, Map<String, List<Team>>> failureOrTeams),
  }) {
    assert(getAllStarted != null);
    assert(teamsReceived != null);
    return teamsReceived(failureOrTeams);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllStarted(List<String> leagueIds),
    Result teamsReceived(
        Either<TeamFailure, Map<String, List<Team>>> failureOrTeams),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (teamsReceived != null) {
      return teamsReceived(failureOrTeams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllStarted(_GetAllStarted value),
    @required Result teamsReceived(_TeamsReceived value),
  }) {
    assert(getAllStarted != null);
    assert(teamsReceived != null);
    return teamsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllStarted(_GetAllStarted value),
    Result teamsReceived(_TeamsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (teamsReceived != null) {
      return teamsReceived(this);
    }
    return orElse();
  }
}

abstract class _TeamsReceived implements TeamsEvent {
  const factory _TeamsReceived(
          Either<TeamFailure, Map<String, List<Team>>> failureOrTeams) =
      _$_TeamsReceived;

  Either<TeamFailure, Map<String, List<Team>>> get failureOrTeams;
  _$TeamsReceivedCopyWith<_TeamsReceived> get copyWith;
}

class _$TeamsStateTearOff {
  const _$TeamsStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  DataTransferInProgress loadInProgress() {
    return const DataTransferInProgress();
  }

// ignore: unused_element
  LoadSuccess loadSuccess(Map<String, List<Team>> teams) {
    return LoadSuccess(
      teams,
    );
  }

// ignore: unused_element
  LoadFailure loadFailure(TeamFailure teamFailure) {
    return LoadFailure(
      teamFailure,
    );
  }
}

// ignore: unused_element
const $TeamsState = _$TeamsStateTearOff();

mixin _$TeamsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(Map<String, List<Team>> teams),
    @required Result loadFailure(TeamFailure teamFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(Map<String, List<Team>> teams),
    Result loadFailure(TeamFailure teamFailure),
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

abstract class $TeamsStateCopyWith<$Res> {
  factory $TeamsStateCopyWith(
          TeamsState value, $Res Function(TeamsState) then) =
      _$TeamsStateCopyWithImpl<$Res>;
}

class _$TeamsStateCopyWithImpl<$Res> implements $TeamsStateCopyWith<$Res> {
  _$TeamsStateCopyWithImpl(this._value, this._then);

  final TeamsState _value;
  // ignore: unused_field
  final $Res Function(TeamsState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$TeamsStateCopyWithImpl<$Res>
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
    return 'TeamsState.initial()';
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
    @required Result loadSuccess(Map<String, List<Team>> teams),
    @required Result loadFailure(TeamFailure teamFailure),
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
    Result loadSuccess(Map<String, List<Team>> teams),
    Result loadFailure(TeamFailure teamFailure),
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

abstract class Initial implements TeamsState {
  const factory Initial() = _$Initial;
}

abstract class $DataTransferInProgressCopyWith<$Res> {
  factory $DataTransferInProgressCopyWith(DataTransferInProgress value,
          $Res Function(DataTransferInProgress) then) =
      _$DataTransferInProgressCopyWithImpl<$Res>;
}

class _$DataTransferInProgressCopyWithImpl<$Res>
    extends _$TeamsStateCopyWithImpl<$Res>
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
    return 'TeamsState.loadInProgress()';
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
    @required Result loadSuccess(Map<String, List<Team>> teams),
    @required Result loadFailure(TeamFailure teamFailure),
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
    Result loadSuccess(Map<String, List<Team>> teams),
    Result loadFailure(TeamFailure teamFailure),
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

abstract class DataTransferInProgress implements TeamsState {
  const factory DataTransferInProgress() = _$DataTransferInProgress;
}

abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({Map<String, List<Team>> teams});
}

class _$LoadSuccessCopyWithImpl<$Res> extends _$TeamsStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object teams = freezed,
  }) {
    return _then(LoadSuccess(
      teams == freezed ? _value.teams : teams as Map<String, List<Team>>,
    ));
  }
}

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.teams) : assert(teams != null);

  @override
  final Map<String, List<Team>> teams;

  @override
  String toString() {
    return 'TeamsState.loadSuccess(teams: $teams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.teams, teams) ||
                const DeepCollectionEquality().equals(other.teams, teams)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(teams);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(Map<String, List<Team>> teams),
    @required Result loadFailure(TeamFailure teamFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(teams);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(Map<String, List<Team>> teams),
    Result loadFailure(TeamFailure teamFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(teams);
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

abstract class LoadSuccess implements TeamsState {
  const factory LoadSuccess(Map<String, List<Team>> teams) = _$LoadSuccess;

  Map<String, List<Team>> get teams;
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({TeamFailure teamFailure});
}

class _$LoadFailureCopyWithImpl<$Res> extends _$TeamsStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object teamFailure = freezed,
  }) {
    return _then(LoadFailure(
      teamFailure == freezed ? _value.teamFailure : teamFailure as TeamFailure,
    ));
  }
}

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.teamFailure) : assert(teamFailure != null);

  @override
  final TeamFailure teamFailure;

  @override
  String toString() {
    return 'TeamsState.loadFailure(teamFailure: $teamFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.teamFailure, teamFailure) ||
                const DeepCollectionEquality()
                    .equals(other.teamFailure, teamFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(teamFailure);

  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(Map<String, List<Team>> teams),
    @required Result loadFailure(TeamFailure teamFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(teamFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(Map<String, List<Team>> teams),
    Result loadFailure(TeamFailure teamFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(teamFailure);
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

abstract class LoadFailure implements TeamsState {
  const factory LoadFailure(TeamFailure teamFailure) = _$LoadFailure;

  TeamFailure get teamFailure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
