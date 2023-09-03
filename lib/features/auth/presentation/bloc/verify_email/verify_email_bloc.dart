import 'package:e_shop/features/auth/domain/repository/auth_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_email_event.dart';
part 'verify_email_state.dart';
part 'verify_email_bloc.freezed.dart';

class VerifyEmailBloc extends Bloc<VerifyEmailEvent, VerifyEmailState> {
  VerifyEmailBloc(this.authRepository) : super(const _Initial()) {
    on<VerifyEmailEvent>(
      (event, emit) => event.when(
        started: () => _init(emit),
        onSendEmailVerification: () => _sendEmailVerification(emit),
        onCheckEmailVerification: () => _checkEmailVerification(emit),
        onDeleteAccount: () => _deleteAccount(),
      ),
    );
  }

  final AuthRepository authRepository;

  Future<void> _init(emit) async {
    emit(const VerifyEmailState.initial());
    await _checkEmailVerification(emit);
  }

  Future<void> _checkEmailVerification(emit) async {
    try {
      final isEmailVerified = await authRepository.checkEmailVerification();
      if (isEmailVerified) emit(const VerifyEmailState.verified());
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }

  Future<void> _sendEmailVerification(emit) async {
    try {
      emit(const VerifyEmailState.resended());
      await authRepository.sendEmailVerification();
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }

  Future<void> _deleteAccount() async {
    try {
      // timer?.cancel();
      await authRepository.deleteAccount();
      // if (mounted) {
      //   context.go(AppRouteUrl.loader);
      // }
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }
}
