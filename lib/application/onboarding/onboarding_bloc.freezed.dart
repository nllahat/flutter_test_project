// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'onboarding_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$OnboardingEventTearOff {
  const _$OnboardingEventTearOff();

// ignore: unused_element
  _Initialized initialized(
      Option<UserPreferences> initialUserPreferencesOption) {
    return _Initialized(
      initialUserPreferencesOption,
    );
  }

// ignore: unused_element
  _SelectLeague selectLeague(League selectedLeague) {
    return _SelectLeague(
      selectedLeague,
    );
  }

// ignore: unused_element
  _UnselectLeague unselectLeague(League unselectedLeague) {
    return _UnselectLeague(
      unselectedLeague,
    );
  }

// ignore: unused_element
  _Saved saved() {
    return const _Saved();
  }

// ignore: unused_element
  _ModifyUserPreferences modifyUserPreferences(
      Map<League, List<Team>> leaugeTeamSelection) {
    return _ModifyUserPreferences(
      leaugeTeamSelection,
    );
  }
}

// ignore: unused_element
const $OnboardingEvent = _$OnboardingEventTearOff();

mixin _$OnboardingEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<UserPreferences> initialUserPreferencesOption),
    @required Result selectLeague(League selectedLeague),
    @required Result unselectLeague(League unselectedLeague),
    @required Result saved(),
    @required
        Result modifyUserPreferences(
            Map<League, List<Team>> leaugeTeamSelection),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<UserPreferences> initialUserPreferencesOption),
    Result selectLeague(League selectedLeague),
    Result unselectLeague(League unselectedLeague),
    Result saved(),
    Result modifyUserPreferences(Map<League, List<Team>> leaugeTeamSelection),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result selectLeague(_SelectLeague value),
    @required Result unselectLeague(_UnselectLeague value),
    @required Result saved(_Saved value),
    @required Result modifyUserPreferences(_ModifyUserPreferences value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result selectLeague(_SelectLeague value),
    Result unselectLeague(_UnselectLeague value),
    Result saved(_Saved value),
    Result modifyUserPreferences(_ModifyUserPreferences value),
    @required Result orElse(),
  });
}

abstract class $OnboardingEventCopyWith<$Res> {
  factory $OnboardingEventCopyWith(
          OnboardingEvent value, $Res Function(OnboardingEvent) then) =
      _$OnboardingEventCopyWithImpl<$Res>;
}

class _$OnboardingEventCopyWithImpl<$Res>
    implements $OnboardingEventCopyWith<$Res> {
  _$OnboardingEventCopyWithImpl(this._value, this._then);

  final OnboardingEvent _value;
  // ignore: unused_field
  final $Res Function(OnboardingEvent) _then;
}

abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<UserPreferences> initialUserPreferencesOption});
}

class __$InitializedCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialUserPreferencesOption = freezed,
  }) {
    return _then(_Initialized(
      initialUserPreferencesOption == freezed
          ? _value.initialUserPreferencesOption
          : initialUserPreferencesOption as Option<UserPreferences>,
    ));
  }
}

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialUserPreferencesOption)
      : assert(initialUserPreferencesOption != null);

  @override
  final Option<UserPreferences> initialUserPreferencesOption;

  @override
  String toString() {
    return 'OnboardingEvent.initialized(initialUserPreferencesOption: $initialUserPreferencesOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialUserPreferencesOption,
                    initialUserPreferencesOption) ||
                const DeepCollectionEquality().equals(
                    other.initialUserPreferencesOption,
                    initialUserPreferencesOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialUserPreferencesOption);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<UserPreferences> initialUserPreferencesOption),
    @required Result selectLeague(League selectedLeague),
    @required Result unselectLeague(League unselectedLeague),
    @required Result saved(),
    @required
        Result modifyUserPreferences(
            Map<League, List<Team>> leaugeTeamSelection),
  }) {
    assert(initialized != null);
    assert(selectLeague != null);
    assert(unselectLeague != null);
    assert(saved != null);
    assert(modifyUserPreferences != null);
    return initialized(initialUserPreferencesOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<UserPreferences> initialUserPreferencesOption),
    Result selectLeague(League selectedLeague),
    Result unselectLeague(League unselectedLeague),
    Result saved(),
    Result modifyUserPreferences(Map<League, List<Team>> leaugeTeamSelection),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialUserPreferencesOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result selectLeague(_SelectLeague value),
    @required Result unselectLeague(_UnselectLeague value),
    @required Result saved(_Saved value),
    @required Result modifyUserPreferences(_ModifyUserPreferences value),
  }) {
    assert(initialized != null);
    assert(selectLeague != null);
    assert(unselectLeague != null);
    assert(saved != null);
    assert(modifyUserPreferences != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result selectLeague(_SelectLeague value),
    Result unselectLeague(_UnselectLeague value),
    Result saved(_Saved value),
    Result modifyUserPreferences(_ModifyUserPreferences value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements OnboardingEvent {
  const factory _Initialized(
      Option<UserPreferences> initialUserPreferencesOption) = _$_Initialized;

  Option<UserPreferences> get initialUserPreferencesOption;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

abstract class _$SelectLeagueCopyWith<$Res> {
  factory _$SelectLeagueCopyWith(
          _SelectLeague value, $Res Function(_SelectLeague) then) =
      __$SelectLeagueCopyWithImpl<$Res>;
  $Res call({League selectedLeague});

  $LeagueCopyWith<$Res> get selectedLeague;
}

class __$SelectLeagueCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res>
    implements _$SelectLeagueCopyWith<$Res> {
  __$SelectLeagueCopyWithImpl(
      _SelectLeague _value, $Res Function(_SelectLeague) _then)
      : super(_value, (v) => _then(v as _SelectLeague));

  @override
  _SelectLeague get _value => super._value as _SelectLeague;

  @override
  $Res call({
    Object selectedLeague = freezed,
  }) {
    return _then(_SelectLeague(
      selectedLeague == freezed
          ? _value.selectedLeague
          : selectedLeague as League,
    ));
  }

  @override
  $LeagueCopyWith<$Res> get selectedLeague {
    if (_value.selectedLeague == null) {
      return null;
    }
    return $LeagueCopyWith<$Res>(_value.selectedLeague, (value) {
      return _then(_value.copyWith(selectedLeague: value));
    });
  }
}

class _$_SelectLeague implements _SelectLeague {
  const _$_SelectLeague(this.selectedLeague) : assert(selectedLeague != null);

  @override
  final League selectedLeague;

  @override
  String toString() {
    return 'OnboardingEvent.selectLeague(selectedLeague: $selectedLeague)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectLeague &&
            (identical(other.selectedLeague, selectedLeague) ||
                const DeepCollectionEquality()
                    .equals(other.selectedLeague, selectedLeague)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedLeague);

  @override
  _$SelectLeagueCopyWith<_SelectLeague> get copyWith =>
      __$SelectLeagueCopyWithImpl<_SelectLeague>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<UserPreferences> initialUserPreferencesOption),
    @required Result selectLeague(League selectedLeague),
    @required Result unselectLeague(League unselectedLeague),
    @required Result saved(),
    @required
        Result modifyUserPreferences(
            Map<League, List<Team>> leaugeTeamSelection),
  }) {
    assert(initialized != null);
    assert(selectLeague != null);
    assert(unselectLeague != null);
    assert(saved != null);
    assert(modifyUserPreferences != null);
    return selectLeague(selectedLeague);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<UserPreferences> initialUserPreferencesOption),
    Result selectLeague(League selectedLeague),
    Result unselectLeague(League unselectedLeague),
    Result saved(),
    Result modifyUserPreferences(Map<League, List<Team>> leaugeTeamSelection),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectLeague != null) {
      return selectLeague(selectedLeague);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result selectLeague(_SelectLeague value),
    @required Result unselectLeague(_UnselectLeague value),
    @required Result saved(_Saved value),
    @required Result modifyUserPreferences(_ModifyUserPreferences value),
  }) {
    assert(initialized != null);
    assert(selectLeague != null);
    assert(unselectLeague != null);
    assert(saved != null);
    assert(modifyUserPreferences != null);
    return selectLeague(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result selectLeague(_SelectLeague value),
    Result unselectLeague(_UnselectLeague value),
    Result saved(_Saved value),
    Result modifyUserPreferences(_ModifyUserPreferences value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectLeague != null) {
      return selectLeague(this);
    }
    return orElse();
  }
}

abstract class _SelectLeague implements OnboardingEvent {
  const factory _SelectLeague(League selectedLeague) = _$_SelectLeague;

  League get selectedLeague;
  _$SelectLeagueCopyWith<_SelectLeague> get copyWith;
}

abstract class _$UnselectLeagueCopyWith<$Res> {
  factory _$UnselectLeagueCopyWith(
          _UnselectLeague value, $Res Function(_UnselectLeague) then) =
      __$UnselectLeagueCopyWithImpl<$Res>;
  $Res call({League unselectedLeague});

  $LeagueCopyWith<$Res> get unselectedLeague;
}

class __$UnselectLeagueCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res>
    implements _$UnselectLeagueCopyWith<$Res> {
  __$UnselectLeagueCopyWithImpl(
      _UnselectLeague _value, $Res Function(_UnselectLeague) _then)
      : super(_value, (v) => _then(v as _UnselectLeague));

  @override
  _UnselectLeague get _value => super._value as _UnselectLeague;

  @override
  $Res call({
    Object unselectedLeague = freezed,
  }) {
    return _then(_UnselectLeague(
      unselectedLeague == freezed
          ? _value.unselectedLeague
          : unselectedLeague as League,
    ));
  }

  @override
  $LeagueCopyWith<$Res> get unselectedLeague {
    if (_value.unselectedLeague == null) {
      return null;
    }
    return $LeagueCopyWith<$Res>(_value.unselectedLeague, (value) {
      return _then(_value.copyWith(unselectedLeague: value));
    });
  }
}

class _$_UnselectLeague implements _UnselectLeague {
  const _$_UnselectLeague(this.unselectedLeague)
      : assert(unselectedLeague != null);

  @override
  final League unselectedLeague;

  @override
  String toString() {
    return 'OnboardingEvent.unselectLeague(unselectedLeague: $unselectedLeague)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnselectLeague &&
            (identical(other.unselectedLeague, unselectedLeague) ||
                const DeepCollectionEquality()
                    .equals(other.unselectedLeague, unselectedLeague)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(unselectedLeague);

  @override
  _$UnselectLeagueCopyWith<_UnselectLeague> get copyWith =>
      __$UnselectLeagueCopyWithImpl<_UnselectLeague>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<UserPreferences> initialUserPreferencesOption),
    @required Result selectLeague(League selectedLeague),
    @required Result unselectLeague(League unselectedLeague),
    @required Result saved(),
    @required
        Result modifyUserPreferences(
            Map<League, List<Team>> leaugeTeamSelection),
  }) {
    assert(initialized != null);
    assert(selectLeague != null);
    assert(unselectLeague != null);
    assert(saved != null);
    assert(modifyUserPreferences != null);
    return unselectLeague(unselectedLeague);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<UserPreferences> initialUserPreferencesOption),
    Result selectLeague(League selectedLeague),
    Result unselectLeague(League unselectedLeague),
    Result saved(),
    Result modifyUserPreferences(Map<League, List<Team>> leaugeTeamSelection),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unselectLeague != null) {
      return unselectLeague(unselectedLeague);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result selectLeague(_SelectLeague value),
    @required Result unselectLeague(_UnselectLeague value),
    @required Result saved(_Saved value),
    @required Result modifyUserPreferences(_ModifyUserPreferences value),
  }) {
    assert(initialized != null);
    assert(selectLeague != null);
    assert(unselectLeague != null);
    assert(saved != null);
    assert(modifyUserPreferences != null);
    return unselectLeague(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result selectLeague(_SelectLeague value),
    Result unselectLeague(_UnselectLeague value),
    Result saved(_Saved value),
    Result modifyUserPreferences(_ModifyUserPreferences value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unselectLeague != null) {
      return unselectLeague(this);
    }
    return orElse();
  }
}

abstract class _UnselectLeague implements OnboardingEvent {
  const factory _UnselectLeague(League unselectedLeague) = _$_UnselectLeague;

  League get unselectedLeague;
  _$UnselectLeagueCopyWith<_UnselectLeague> get copyWith;
}

abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

class __$SavedCopyWithImpl<$Res> extends _$OnboardingEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'OnboardingEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<UserPreferences> initialUserPreferencesOption),
    @required Result selectLeague(League selectedLeague),
    @required Result unselectLeague(League unselectedLeague),
    @required Result saved(),
    @required
        Result modifyUserPreferences(
            Map<League, List<Team>> leaugeTeamSelection),
  }) {
    assert(initialized != null);
    assert(selectLeague != null);
    assert(unselectLeague != null);
    assert(saved != null);
    assert(modifyUserPreferences != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<UserPreferences> initialUserPreferencesOption),
    Result selectLeague(League selectedLeague),
    Result unselectLeague(League unselectedLeague),
    Result saved(),
    Result modifyUserPreferences(Map<League, List<Team>> leaugeTeamSelection),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result selectLeague(_SelectLeague value),
    @required Result unselectLeague(_UnselectLeague value),
    @required Result saved(_Saved value),
    @required Result modifyUserPreferences(_ModifyUserPreferences value),
  }) {
    assert(initialized != null);
    assert(selectLeague != null);
    assert(unselectLeague != null);
    assert(saved != null);
    assert(modifyUserPreferences != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result selectLeague(_SelectLeague value),
    Result unselectLeague(_UnselectLeague value),
    Result saved(_Saved value),
    Result modifyUserPreferences(_ModifyUserPreferences value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements OnboardingEvent {
  const factory _Saved() = _$_Saved;
}

abstract class _$ModifyUserPreferencesCopyWith<$Res> {
  factory _$ModifyUserPreferencesCopyWith(_ModifyUserPreferences value,
          $Res Function(_ModifyUserPreferences) then) =
      __$ModifyUserPreferencesCopyWithImpl<$Res>;
  $Res call({Map<League, List<Team>> leaugeTeamSelection});
}

class __$ModifyUserPreferencesCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res>
    implements _$ModifyUserPreferencesCopyWith<$Res> {
  __$ModifyUserPreferencesCopyWithImpl(_ModifyUserPreferences _value,
      $Res Function(_ModifyUserPreferences) _then)
      : super(_value, (v) => _then(v as _ModifyUserPreferences));

  @override
  _ModifyUserPreferences get _value => super._value as _ModifyUserPreferences;

  @override
  $Res call({
    Object leaugeTeamSelection = freezed,
  }) {
    return _then(_ModifyUserPreferences(
      leaugeTeamSelection == freezed
          ? _value.leaugeTeamSelection
          : leaugeTeamSelection as Map<League, List<Team>>,
    ));
  }
}

class _$_ModifyUserPreferences implements _ModifyUserPreferences {
  const _$_ModifyUserPreferences(this.leaugeTeamSelection)
      : assert(leaugeTeamSelection != null);

  @override
  final Map<League, List<Team>> leaugeTeamSelection;

  @override
  String toString() {
    return 'OnboardingEvent.modifyUserPreferences(leaugeTeamSelection: $leaugeTeamSelection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ModifyUserPreferences &&
            (identical(other.leaugeTeamSelection, leaugeTeamSelection) ||
                const DeepCollectionEquality()
                    .equals(other.leaugeTeamSelection, leaugeTeamSelection)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(leaugeTeamSelection);

  @override
  _$ModifyUserPreferencesCopyWith<_ModifyUserPreferences> get copyWith =>
      __$ModifyUserPreferencesCopyWithImpl<_ModifyUserPreferences>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result initialized(
            Option<UserPreferences> initialUserPreferencesOption),
    @required Result selectLeague(League selectedLeague),
    @required Result unselectLeague(League unselectedLeague),
    @required Result saved(),
    @required
        Result modifyUserPreferences(
            Map<League, List<Team>> leaugeTeamSelection),
  }) {
    assert(initialized != null);
    assert(selectLeague != null);
    assert(unselectLeague != null);
    assert(saved != null);
    assert(modifyUserPreferences != null);
    return modifyUserPreferences(leaugeTeamSelection);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<UserPreferences> initialUserPreferencesOption),
    Result selectLeague(League selectedLeague),
    Result unselectLeague(League unselectedLeague),
    Result saved(),
    Result modifyUserPreferences(Map<League, List<Team>> leaugeTeamSelection),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (modifyUserPreferences != null) {
      return modifyUserPreferences(leaugeTeamSelection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result selectLeague(_SelectLeague value),
    @required Result unselectLeague(_UnselectLeague value),
    @required Result saved(_Saved value),
    @required Result modifyUserPreferences(_ModifyUserPreferences value),
  }) {
    assert(initialized != null);
    assert(selectLeague != null);
    assert(unselectLeague != null);
    assert(saved != null);
    assert(modifyUserPreferences != null);
    return modifyUserPreferences(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result selectLeague(_SelectLeague value),
    Result unselectLeague(_UnselectLeague value),
    Result saved(_Saved value),
    Result modifyUserPreferences(_ModifyUserPreferences value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (modifyUserPreferences != null) {
      return modifyUserPreferences(this);
    }
    return orElse();
  }
}

abstract class _ModifyUserPreferences implements OnboardingEvent {
  const factory _ModifyUserPreferences(
      Map<League, List<Team>> leaugeTeamSelection) = _$_ModifyUserPreferences;

  Map<League, List<Team>> get leaugeTeamSelection;
  _$ModifyUserPreferencesCopyWith<_ModifyUserPreferences> get copyWith;
}

class _$OnboardingStateTearOff {
  const _$OnboardingStateTearOff();

// ignore: unused_element
  _OnboardingState call(
      {@required
          UserPreferences userPreferences,
      @required
          List<League> selectedLeagues,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Option<Either<UserPreferencesFailure, Unit>>
              saveFailureOrSuccessOption}) {
    return _OnboardingState(
      userPreferences: userPreferences,
      selectedLeagues: selectedLeagues,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $OnboardingState = _$OnboardingStateTearOff();

mixin _$OnboardingState {
  UserPreferences get userPreferences;
  List<League> get selectedLeagues;
  bool get showErrorMessages;
  bool get isEditing;
  bool get isSaving;
  Option<Either<UserPreferencesFailure, Unit>> get saveFailureOrSuccessOption;

  $OnboardingStateCopyWith<OnboardingState> get copyWith;
}

abstract class $OnboardingStateCopyWith<$Res> {
  factory $OnboardingStateCopyWith(
          OnboardingState value, $Res Function(OnboardingState) then) =
      _$OnboardingStateCopyWithImpl<$Res>;
  $Res call(
      {UserPreferences userPreferences,
      List<League> selectedLeagues,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<UserPreferencesFailure, Unit>> saveFailureOrSuccessOption});

  $UserPreferencesCopyWith<$Res> get userPreferences;
}

class _$OnboardingStateCopyWithImpl<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  _$OnboardingStateCopyWithImpl(this._value, this._then);

  final OnboardingState _value;
  // ignore: unused_field
  final $Res Function(OnboardingState) _then;

  @override
  $Res call({
    Object userPreferences = freezed,
    Object selectedLeagues = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      userPreferences: userPreferences == freezed
          ? _value.userPreferences
          : userPreferences as UserPreferences,
      selectedLeagues: selectedLeagues == freezed
          ? _value.selectedLeagues
          : selectedLeagues as List<League>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption
              as Option<Either<UserPreferencesFailure, Unit>>,
    ));
  }

  @override
  $UserPreferencesCopyWith<$Res> get userPreferences {
    if (_value.userPreferences == null) {
      return null;
    }
    return $UserPreferencesCopyWith<$Res>(_value.userPreferences, (value) {
      return _then(_value.copyWith(userPreferences: value));
    });
  }
}

abstract class _$OnboardingStateCopyWith<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  factory _$OnboardingStateCopyWith(
          _OnboardingState value, $Res Function(_OnboardingState) then) =
      __$OnboardingStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserPreferences userPreferences,
      List<League> selectedLeagues,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<UserPreferencesFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $UserPreferencesCopyWith<$Res> get userPreferences;
}

class __$OnboardingStateCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res>
    implements _$OnboardingStateCopyWith<$Res> {
  __$OnboardingStateCopyWithImpl(
      _OnboardingState _value, $Res Function(_OnboardingState) _then)
      : super(_value, (v) => _then(v as _OnboardingState));

  @override
  _OnboardingState get _value => super._value as _OnboardingState;

  @override
  $Res call({
    Object userPreferences = freezed,
    Object selectedLeagues = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_OnboardingState(
      userPreferences: userPreferences == freezed
          ? _value.userPreferences
          : userPreferences as UserPreferences,
      selectedLeagues: selectedLeagues == freezed
          ? _value.selectedLeagues
          : selectedLeagues as List<League>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption
              as Option<Either<UserPreferencesFailure, Unit>>,
    ));
  }
}

class _$_OnboardingState implements _OnboardingState {
  const _$_OnboardingState(
      {@required this.userPreferences,
      @required this.selectedLeagues,
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption})
      : assert(userPreferences != null),
        assert(selectedLeagues != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final UserPreferences userPreferences;
  @override
  final List<League> selectedLeagues;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<UserPreferencesFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'OnboardingState(userPreferences: $userPreferences, selectedLeagues: $selectedLeagues, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnboardingState &&
            (identical(other.userPreferences, userPreferences) ||
                const DeepCollectionEquality()
                    .equals(other.userPreferences, userPreferences)) &&
            (identical(other.selectedLeagues, selectedLeagues) ||
                const DeepCollectionEquality()
                    .equals(other.selectedLeagues, selectedLeagues)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userPreferences) ^
      const DeepCollectionEquality().hash(selectedLeagues) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$OnboardingStateCopyWith<_OnboardingState> get copyWith =>
      __$OnboardingStateCopyWithImpl<_OnboardingState>(this, _$identity);
}

abstract class _OnboardingState implements OnboardingState {
  const factory _OnboardingState(
      {@required
          UserPreferences userPreferences,
      @required
          List<League> selectedLeagues,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Option<Either<UserPreferencesFailure, Unit>>
              saveFailureOrSuccessOption}) = _$_OnboardingState;

  @override
  UserPreferences get userPreferences;
  @override
  List<League> get selectedLeagues;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<UserPreferencesFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  _$OnboardingStateCopyWith<_OnboardingState> get copyWith;
}
