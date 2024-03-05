import 'package:e_shop/src/features/user/domain/entities/user_entity.dart';

abstract interface class AuthRepository {
  UserEntity? getUser();
  Future<void> login(String email, String password);
  Future<void> loginWithGmail();
  Future<void> signUp(String email, String password);
  Future<void> resetPassword(String email);
  Future<void> sendEmailVerification();
  Future<bool> checkEmailVerification();
  Future<void> deleteAccount();
  Future<void> logout();
}
