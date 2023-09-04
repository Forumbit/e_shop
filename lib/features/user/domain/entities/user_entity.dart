import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  factory UserEntity({
    required String? displayName,
    required String? email,
    required bool emailVerified,
    required String uid,
    required String? phoneNumber,
    required String? photoURL,
  }) = _UserEntity;
}