part of 'verify_email_bloc.dart';

@freezed
class VerifyEmailState with _$VerifyEmailState {
  const factory VerifyEmailState.initial() = _Initial;
  const factory VerifyEmailState.verified() = _Verified;
  const factory VerifyEmailState.resended() = _Resended;
}
