import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:my_proj/domain/auth/i_auth_facade.dart';
import 'package:my_proj/domain/user/entities/user_failure.dart';
import 'package:my_proj/domain/user/repos/i_user_repository.dart';

part 'onboarding_state.dart';
part 'onboarding_cubit.freezed.dart';

@injectable
class OnboardingCubit extends Cubit<OnboardingState> {
  bool skipOnboarding;
  final IAuthFacade _authFacade;
  final IUserRepository _userRepository;
  StreamSubscription<Either<UserFailure, User>> _userSubscription;

  OnboardingCubit(this.skipOnboarding, this._authFacade, this._userRepository)
      : super(const OnboardingState.initial()) {
    this.skipOnboarding = false;
  }

  void onboardingScreenStartedNoUser() async {
    if (skipOnboarding) {
      emit(OnboardingState.skip());

      return;
    }

    emit(OnboardingState.required());
  }
}
