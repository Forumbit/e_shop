part of 'email_verification_bloc.dart';

@freezed
class EmailVerificationEvent with _$EmailVerificationEvent {
  const factory EmailVerificationEvent.started() = _Started;
  const factory EmailVerificationEvent.onSendEmailVerification() =
      _OnSendEmailVerification;
  const factory EmailVerificationEvent.onCheckEmailVerification() =
      _OnCheckEmailVerification;
  const factory EmailVerificationEvent.onDeleteAccount() =
      _OnDeleteAccount;
}
