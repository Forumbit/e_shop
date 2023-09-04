import 'package:e_shop/features/user/data/models/user_model.dart';
import 'package:e_shop/features/user/domain/entities/user_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserMapper {
  static UserModel fromEntity(UserEntity entity) => UserModel(
        displayName: entity.displayName,
        email: entity.email,
        emailVerified: entity.emailVerified,
        uid: entity.uid,
        phoneNumber: entity.phoneNumber,
        photoURL: entity.photoURL,
      );

  static UserEntity toEntity(UserModel model) => UserEntity(
        displayName: model.displayName,
        email: model.email,
        emailVerified: model.emailVerified,
        uid: model.uid,
        phoneNumber: model.phoneNumber,
        photoURL: model.photoURL,
      );

  static UserModel fromFirebaseUser(User user) => UserModel(
        displayName: user.displayName,
        email: user.email,
        emailVerified: user.emailVerified,
        uid: user.uid,
        phoneNumber: user.phoneNumber,
        photoURL: user.photoURL,
      );
}
