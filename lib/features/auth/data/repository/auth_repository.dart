import 'dart:developer';
import 'package:e_shop/common/error/exception.dart';
import 'package:e_shop/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:e_shop/features/auth/domain/repository/auth_repository.dart';
import 'package:e_shop/features/user/data/mapper/user_mapper.dart';
import 'package:e_shop/features/user/domain/entities/user_entity.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this.authRemoteDataSource);

  final AuthRemoteDataSource authRemoteDataSource;

  @override
  UserEntity? getUser() {
    try {
      final userModel = authRemoteDataSource.getUser();
      final userEntity =
          userModel == null ? null : UserMapper.toEntity(userModel);
      return userEntity;
    } catch (e) {
      log(e.toString());
      throw Exception(e);
    }
  }

  @override
  Future<void> login(String email, String password) async {
    try {
      await authRemoteDataSource.login(email, password);
    } on WrongEmailOrPasswordException {
      throw WrongEmailOrPasswordException();
    } catch (e) {
      log(e.toString());
      throw Exception(e);
    }
  }

  @override
  Future<void> loginWithGmail() async {
    try {
      await authRemoteDataSource.loginWithGmail();
    } catch (e) {
      log(e.toString());
      throw Exception(e);
    }
  }

  @override
  Future<void> resetPassword(String email) async {
    try {
      await authRemoteDataSource.resetPassword(email);
    } on WrongEmailOrPasswordException {
      throw WrongEmailOrPasswordException();
    } catch (e) {
      log(e.toString());
      throw Exception(e);
    }
  }

  @override
  Future<void> signUp(String email, String password) async {
    try {
      await authRemoteDataSource.signUp(email, password);
    } on EmailAlreadyInUse {
      throw EmailAlreadyInUse();
    } catch (e) {
      log(e.toString());
      throw Exception(e);
    }
  }

  @override
  Future<void> sendEmailVerification() async {
    try {
      await authRemoteDataSource.sendEmailVerification();
    } catch (e) {
      log(e.toString());
      throw Exception(e);
    }
  }

  @override
  Future<bool> checkEmailVerification() async {
    return await authRemoteDataSource.checkEmailVerification();
  }

  @override
  Future<void> deleteAccount() async {
    try {
      await authRemoteDataSource.deleteAccount();
    } catch (e) {
      log(e.toString());
      throw Exception(e);
    }
  }

  @override
  Future<void> logout() async {
    try {
      await authRemoteDataSource.logout();
    } catch (e) {
      log(e.toString());
      throw Exception(e);
    }
  }
}
