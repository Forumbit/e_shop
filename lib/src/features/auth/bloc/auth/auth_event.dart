part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;
  const factory AuthEvent.onLogin(String email, String password) = _OnLogin;
  const factory AuthEvent.onResetPassword(String email) = _OnResetPassword;
  const factory AuthEvent.onLoginWithGmail() = _OnLoginWithGmaill;
  const factory AuthEvent.onSignUp(
    String email,
    String password,
    String repeatPassword,
  ) = _OnSignUp;
}
