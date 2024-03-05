import 'package:e_shop/src/core/common/constants/firebase_constants/firebase_exception_code.dart';
import 'package:e_shop/src/core/common/exceptions/exceptions.dart';
import 'package:e_shop/src/features/user/data/mapper/user_mapper.dart';
import 'package:e_shop/src/features/user/data/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract interface class AuthRemoteDataSource {
  UserModel? getAccount();
  Future<void> login(String email, String password);
  Future<void> loginWithGmail();
  Future<void> signUp(String email, String password);
  Future<void> resetPassword(String email);
  Future<void> sendEmailVerification();
  Future<bool> checkEmailVerification();
  Future<void> deleteAccount();
  Future<void> logout();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  AuthRemoteDataSourceImpl(this.firebaseAuth);

  final FirebaseAuth firebaseAuth;

  @override
  UserModel? getAccount() {
    try {
      final currentUser = firebaseAuth.currentUser;
      if (currentUser == null) return null;
      final userModel = UserMapper.fromFirebaseUser(currentUser);
      return userModel;
    } on Object {
      rethrow;
    }
  }

  @override
  Future<void> login(String email, String password) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == FirebaseExceptionCode.userNotFound ||
          e.code == FirebaseExceptionCode.wrongPassword) {
        throw WrongEmailOrPasswordException();
      }
      rethrow;
    } on Object {
      rethrow;
    }
  }

  @override
  Future<void> loginWithGmail() async {
    try {
      final GoogleSignInAccount? guest = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication authGuest = await guest!.authentication;
      final credential = GoogleAuthProvider.credential(
        idToken: authGuest.idToken,
        accessToken: authGuest.accessToken,
      );
      await firebaseAuth.signInWithCredential(credential);
    } on Object {
      rethrow;
    }
  }

  @override
  Future<void> resetPassword(String email) async {
    try {
      await firebaseAuth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      if (e.code == FirebaseExceptionCode.userNotFound) {
        throw WrongEmailOrPasswordException();
      }
    } on Object {
      rethrow;
    }
  }

  @override
  Future<void> signUp(String email, String password) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == FirebaseExceptionCode.emailAlreadyInUse) {
        throw EmailAlreadyInUse();
      }
      rethrow;
    } on Object {
      rethrow;
    }
  }

  @override
  Future<void> sendEmailVerification() async {
    try {
      final user = firebaseAuth.currentUser!;
      await user.sendEmailVerification();
    } on Object {
      rethrow;
    }
  }

  @override
  Future<bool> checkEmailVerification() async {
    try {
      final user = firebaseAuth.currentUser!;
      await user.reload();
      final emailVerified = user.emailVerified;
      return emailVerified;
    } on Object {
      rethrow;
    }
  }

  @override
  Future<void> deleteAccount() async {
    try {
      final user = firebaseAuth.currentUser!;
      await user.delete();
    } on Object {
      rethrow;
    }
  }

  @override
  Future<void> logout() async {
    try {
      await firebaseAuth.signOut();
    } on Object {
      rethrow;
    }
  }
}
