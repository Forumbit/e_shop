

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    required String? displayName,
    required String? email,
    required bool emailVerified,
    required String uid,
    required String? phoneNumber,
    required String? photoURL,
  }) = _UserModel;
}
