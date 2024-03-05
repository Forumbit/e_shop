import 'package:e_shop/core/common/exceptions/exceptions.dart';
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
      final userModel = authRemoteDataSource.getAccount();
      final userEntity =
          userModel == null ? null : UserMapper.toEntity(userModel);
      return userEntity;
    } on Object {
      rethrow;
    }
  }

  @override
  Future<void> login(String email, String password) async {
    try {
      await authRemoteDataSource.login(email, password);
    } on WrongEmailOrPasswordException {
      rethrow;
    } on Object {
      rethrow;
    }
  }

  @override
  Future<void> loginWithGmail() async {
    try {
      await authRemoteDataSource.loginWithGmail();
    } on Object {
      rethrow;
    }
  }

  @override
  Future<void> resetPassword(String email) async {
    try {
      await authRemoteDataSource.resetPassword(email);
    } on WrongEmailOrPasswordException {
      throw WrongEmailOrPasswordException();
    } on Object {
      rethrow;
    }
  }

  @override
  Future<void> signUp(String email, String password) async {
    try {
      await authRemoteDataSource.signUp(email, password);
    } on EmailAlreadyInUse {
      throw EmailAlreadyInUse();
    } on Object {
      rethrow;
    }
  }

  @override
  Future<void> sendEmailVerification() async {
    try {
      await authRemoteDataSource.sendEmailVerification();
    } on Object {
      rethrow;
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
    } on Object {
      rethrow;
    }
  }

  @override
  Future<void> logout() async {
    try {
      await authRemoteDataSource.logout();
    } on Object {
      rethrow;
    }
  }
}
