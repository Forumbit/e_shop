import 'package:e_shop/features/auth/domain/repository/auth_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_verification_event.dart';
part 'email_verification_state.dart';
part 'email_verification_bloc.freezed.dart';

class EmailVerificationBloc extends Bloc<EmailVerificationEvent, EmailVerificationState> {
  EmailVerificationBloc(this.authRepository) : super(const _Initial()) {
    on<EmailVerificationEvent>(
      (event, emit) => event.when(
        started: () => _init(emit),
        onSendEmailVerification: () => _sendEmailVerification(emit),
        onCheckEmailVerification: () => _checkEmailVerification(emit),
        onDeleteAccount: () => _deleteAccount(emit),
      ),
    );
  }

  final AuthRepository authRepository;

  Future<void> _init(emit) async {
    emit(const EmailVerificationState.initial());
    await _checkEmailVerification(emit);
  }

  Future<void> _checkEmailVerification(emit) async {
    try {
      final isEmailVerified = await authRepository.checkEmailVerification();
      if (isEmailVerified) emit(const EmailVerificationState.verified());
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> _sendEmailVerification(emit) async {
    try {
      emit(const EmailVerificationState.resended());
      await authRepository.sendEmailVerification();
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> _deleteAccount(emit) async {
    try {
      await authRepository.deleteAccount();
      emit(const EmailVerificationState.successfull());
    } catch (e) {
      throw Exception(e);
    }
  }
}
