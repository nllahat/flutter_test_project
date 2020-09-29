import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/value_objects.dart';
import '../../domain/core/value_objects.dart';
import '../../domain/user/entities/user.dart';
import '../../domain/user/entities/user_failure.dart';
import '../user/user_repository.dart';

@prod
@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final auth.FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final UserRepository _userRepository;

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
    this._userRepository,
  );

  Option<User> _currentUser;
  Option<User> get currentUser => _currentUser;

  void _populateCurrentUser(Option<User> user) {
    this._currentUser = user;
  }

  Future<Option<User>> _currentUserToDomain(String uid) async {
    final Either<UserFailure, User> userOption =
        await this._userRepository.getUser(uid);

    return userOption.fold((l) {
      return none();
    }, (r) {
      return some(r);
    });
  }

  /// Stream of [User] which will emit the current user when
  /// the authentication state changes.
  ///
  /// Emits [User.empty] if the user is not authenticated.
  Stream<Option<User>> get userStream {
    return _firebaseAuth.authStateChanges().asyncMap((firebaseUser) async {
      Option<User> user = await _currentUserToDomain(firebaseUser?.uid);

      this._populateCurrentUser(user);

      return user;
    });
  }

  @override
  Future<Option<User>> getSignedInUser() async {
    var user = await _currentUserToDomain(_firebaseAuth.currentUser?.uid);

    this._populateCurrentUser(user);

    return user;
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    final emailAddressStr = emailAddress.value.getOrElse(() => 'INVALID EMAIL');
    final passwordStr = password.value.getOrElse(() => 'INVALID PASSWORD');
    try {
      auth.UserCredential userCred =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      Either<UserFailure, Unit> result = await this._userRepository.create(User(
          id: UniqueId.fromUniqueString(userCred.user.uid),
          emailAddress: EmailAddress(userCred.user.email),
          fullName:
              userCred.user.displayName ?? userCred.user.email.split('@')[0]));
      return result.fold(
          (l) => left(AuthFailure.userException()), (r) => right(r));
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    final emailAddressStr = emailAddress.value.getOrElse(() => 'INVALID EMAIL');
    final passwordStr = password.value.getOrElse(() => 'INVALID PASSWORD');
    try {
      return await _firebaseAuth
          .signInWithEmailAndPassword(
            email: emailAddressStr,
            password: passwordStr,
          )
          .then((_) => right(unit));
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_WRONG_PASSWORD' ||
          e.code == 'ERROR_USER_NOT_FOUND') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;
      final authCredential = auth.GoogleAuthProvider.credential(
        accessToken: googleAuthentication.accessToken,
        idToken: googleAuthentication.idToken,
      );

      auth.UserCredential userCred =
          await _firebaseAuth.signInWithCredential(authCredential);

      Either<UserFailure, User> result =
          await this._userRepository.getUser(userCred.user.uid);

      return result.fold((l) async {
        if (l == UserFailure.notFound()) {
          Either<UserFailure, Unit> createdUser = await this
              ._userRepository
              .create(User(
                  id: UniqueId.fromUniqueString(userCred.user.uid),
                  emailAddress: EmailAddress(userCred.user.email),
                  fullName: userCred.user.displayName ??
                      userCred.user.email.split('@')[0]));

          return right(
              createdUser.getOrElse(() => throw AuthFailure.userException()));
        } else {
          throw AuthFailure.userException();
        }
      }, (r) => right(unit));
    } on auth.FirebaseAuthException {
      return left(const AuthFailure.providerException());
    } catch (e) {
      print(e);

      if (e == AuthFailure.userException()) {
        await this.signOut();
        return left(e);
      }

      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() async {
    return Future.wait([
      _googleSignIn.signOut(),
      _firebaseAuth.signOut(),
    ]);
  }
}
