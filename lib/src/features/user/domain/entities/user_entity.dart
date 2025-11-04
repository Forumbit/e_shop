import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  factory UserEntity({
    String? displayName,
    String? email,
    required bool emailVerified,
    required String uid,
    String? phoneNumber,
    String? photoURL,
  }) = _UserEntity;
}
