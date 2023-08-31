import 'package:e_shop/common/constants/firebase_exception_code.dart';
import 'package:e_shop/common/error/exception.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract interface class AuthRemoteDataSource {
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
  Future<void> login(String email, String password) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == FirebaseExceptionCode.userNotFound ||
          e.code == FirebaseExceptionCode.userNotFound) {
        throw WrongEmailOrPasswordException();
      }
      throw Exception(e);
    } catch (e) {
      throw Exception(e);
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
    } catch (e) {
      throw Exception(e);
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
    } catch (e) {
      throw Exception(e);
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
      throw Exception(e);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> sendEmailVerification() async {
    try {
      final user = firebaseAuth.currentUser!;
      await user.sendEmailVerification();
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<bool> checkEmailVerification() async {
    try {
      final user = firebaseAuth.currentUser!;
      await user.reload();
      final emailVerified = user.emailVerified;
      return emailVerified;
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> deleteAccount() async {
    try {
      final user = firebaseAuth.currentUser!;
      await user.delete();
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> logout() async {
    try {
      await firebaseAuth.signOut();
    } catch (e) {
      throw Exception(e);
    }
  }
}
