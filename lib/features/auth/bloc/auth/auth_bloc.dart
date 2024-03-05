import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:e_shop/core/common/constants/app_error_text.dart';
import 'package:e_shop/core/common/constants/app_texts.dart';
import 'package:e_shop/core/common/exceptions/exceptions.dart';
import 'package:e_shop/features/auth/domain/repository/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this.authRepository) : super(const _Initial()) {
    on<AuthEvent>(
      (event, emit) => event.when(
        started: () => null,
        onLogin: (String email, String password) => login(
          emit,
          email,
          password,
        ),
        onResetPassword: (String email) => resetPassword(emit, email),
        onSignUp: (
          String email,
          String password,
          String repeatPassword,
        ) =>
            signUp(
          emit,
          email,
          password,
          repeatPassword,
        ),
        onLoginWithGmail: () => _loginWithGmail(emit),
      ),
      transformer: droppable(),
    );
  }

  final AuthRepository authRepository;

  Future<void> login(
    emit,
    String email,
    String password,
  ) async {
    try {
      emit(const AuthState.loading());
      await authRepository.login(email, password);
      emit(const AuthState.success());
    } on WrongEmailOrPasswordException {
      emit(
        const AuthState.message(
          AppErrorText.wrongEmailOrPassword,
          true,
        ),
      );
    } on Object {
      emit(
        const AuthState.message(
          AppErrorText.commonError,
          true,
        ),
      );
      rethrow;
    }
  }

  Future<void> resetPassword(
    emit,
    String email,
  ) async {
    try {
      emit(const AuthState.loading());
      await authRepository.resetPassword(email);
      emit(
        const AuthState.message(
          AppTexts.linkWasSend,
          false,
        ),
      );
      emit(const AuthState.success());
    } on WrongEmailOrPasswordException {
      emit(
        const AuthState.message(
          AppErrorText.emailIsWrong,
          true,
        ),
      );
    } on Object {
      emit(
        const AuthState.message(
          AppErrorText.commonError,
          true,
        ),
      );
      rethrow;
    }
  }

  Future<void> signUp(
    emit,
    String email,
    String password,
    String repeatPassword,
  ) async {
    if (password != repeatPassword) {
      emit(const AuthState.message(
        AppErrorText.passwordDoNotMatch,
        true,
      ));
      return;
    }
    try {
      emit(const AuthState.loading());
      await authRepository.signUp(email, password);
      emit(const AuthState.success());
    } on EmailAlreadyInUse {
      emit(
        const AuthState.message(
          AppErrorText.emailAlreadyInUse,
          true,
        ),
      );
    } on Object {
      emit(
        const AuthState.message(
          AppErrorText.commonError,
          true,
        ),
      );
      rethrow;
    }
  }

  Future<void> _loginWithGmail(emit) async {
    try {
      await authRepository.loginWithGmail();
      emit(const AuthState.success());
    } on Object {
      emit(
        const AuthState.message(
          AppErrorText.commonError,
          true,
        ),
      );
      rethrow;
    }
  }
}
