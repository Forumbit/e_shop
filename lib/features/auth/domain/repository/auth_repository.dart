abstract interface class AuthRepository {
  Future<void> login(String email, String password);
  Future<void> loginWithGmail();
  Future<void> signUp(String email, String password);
  Future<void> resetPassword(String email);
  Future<void> sendEmailVerification();
  Future<bool> checkEmailVerification();
  Future<void> deleteAccount();
  Future<void> logout();
}