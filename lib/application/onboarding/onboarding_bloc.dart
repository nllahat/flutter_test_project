import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_proj/domain/leagues/league.dart';
import 'package:my_proj/domain/teams/team.dart';
import 'package:my_proj/domain/user_preferences/i_user_preferences_repository.dart';
import 'package:my_proj/domain/user_preferences/user_preferences.dart';
import 'package:my_proj/domain/user_preferences/user_preferences_failure.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';

part 'onboarding_bloc.freezed.dart';

@injectable
class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final IUserPreferencesRepository _userPreferencesRepository;

  OnboardingBloc(this._userPreferencesRepository)
      : super(OnboardingState.initial());

  @override
  Stream<OnboardingState> mapEventToState(
    OnboardingEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialUserPreferencesOption.fold(
          // Yielding an unchanged state results in not emitting anything at all
          () => state,
          (initialUserPreferences) {
            return state.copyWith(
              userPreferences: initialUserPreferences,
              isEditing: true,
            );
          },
        );
      },
      unselectLeague: (e) async* {
        Map<League, List<Team>> copy =
            Map.from(state.userPreferences.leaugeTeamSelection);
        copy.remove(e.unselectedLeague);
        UserPreferences upCopy =
            state.userPreferences.copyWith(leaugeTeamSelection: copy);

        yield state.copyWith(userPreferences: upCopy);
      },
      selectLeague: (e) async* {
        Map<League, List<Team>> copy =
            Map.from(state.userPreferences.leaugeTeamSelection);
        copy[e.selectedLeague] = List();
        UserPreferences upCopy =
            state.userPreferences.copyWith(leaugeTeamSelection: copy);

        yield state.copyWith(userPreferences: upCopy);
      },
      modifyUserPreferences: (e) async* {
        yield state.copyWith(
          userPreferences: UserPreferences(
              id: state.userPreferences.id,
              leaugeTeamSelection: e.leaugeTeamSelection),
          isEditing: true,
        );
      },
      saved: (e) async* {
        Either<UserPreferencesFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.userPreferences != null) {
          failureOrSuccess =
              await _userPreferencesRepository.create(state.userPreferences);
        }
        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
