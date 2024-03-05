part of 'email_verification_bloc.dart';

@freezed
class EmailVerificationState with _$EmailVerificationState {
  const factory EmailVerificationState.initial() = _Initial;
  const factory EmailVerificationState.verified() = _Verified;
  const factory EmailVerificationState.resended() = _Resended;
  const factory EmailVerificationState.successfull() = _SuccessFull;
}
