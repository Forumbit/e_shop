import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_shop/src/core/common/constants/firebase_constants/firebase_collection_names.dart';
import 'package:e_shop/src/core/common/constants/firebase_constants/firebase_field_names.dart';
import 'package:e_shop/src/features/cart/data/models/cart_model.dart';

abstract interface class CartRemoteDataSource {
  Future<void> createCart(CartModel cart);
  Future<CartModel?> getCart(String uid);
  Future<void> updateCart(CartModel cart);
  Future<void> deleteCart(String documentId);
}

class CartRemoteDataSourceImpl implements CartRemoteDataSource {
  CartRemoteDataSourceImpl({required this.firebaseFirestore});

  final FirebaseFirestore firebaseFirestore;

  @override
  Future<void> createCart(CartModel cart) async {
    try {
      final doc = await firebaseFirestore
          .collection(FireDBNames.carts)
          .add(cart.toJson());
      final cartWithId = cart.copyWith(docId: doc.id);
      await firebaseFirestore
          .collection(FireDBNames.carts)
          .doc(doc.id)
          .update(cartWithId.toJson());
    } on Object {
      rethrow;
    }
  }

  @override
  Future<CartModel?> getCart(String uid) async {
    try {
      final carts = firebaseFirestore.collection(
        FireDBNames.carts,
      );
      final cart = await carts
          .where(
            FBFieldNames.uid,
            isEqualTo: uid,
          )
          .get();
      if (cart.docs.isNotEmpty) {
        final cartModel = CartModel.fromJson(cart.docs.first.data());
        return cartModel;
      }
      return null;
    } on Object {
      rethrow;
    }
  }

  @override
  Future<void> updateCart(CartModel cart) async {
    try {
      final carts = firebaseFirestore.collection(
        FireDBNames.carts,
      );
      await carts.doc(cart.docId).update(cart.toJson());
    } on Object {
      rethrow;
    }
  }

  @override
  Future<void> deleteCart(String documentId) async {
    try {
      final carts = firebaseFirestore.collection(
        FireDBNames.carts,
      );
      await carts.doc(documentId).delete();
    } on Object {
      rethrow;
    }
  }
}
