import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:e_shop/src/features/auth/domain/repository/auth_repository.dart';
import 'package:e_shop/src/features/user/domain/entities/user_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({required this.authRepository}) : super(const _Initial()) {
    on<UserEvent>(
      (event, emit) async => event.when(
          started: () => _init(emit), logout: () => _logoutUser(emit)),
      transformer: sequential(),
    );
  }

  final AuthRepository authRepository;

  Future<void> _init(emit) async {
    try {
      emit(const UserState.loading());
      final user = authRepository.getUser();
      emit(UserState.loaded(user));
    } on Object {
      emit(const UserState.error());
      rethrow;
    }
  }

  FutureOr<void> _logoutUser(emit) async {
    try {
      await authRepository.logout();
    } catch (e) {
      emit(const UserState.error());
      rethrow;
    }
  }
}
