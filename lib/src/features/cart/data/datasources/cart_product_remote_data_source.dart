import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_shop/src/core/common/constants/firebase_constants/firebase_collection_names.dart';
import 'package:e_shop/src/core/common/constants/firebase_constants/firebase_field_names.dart';
import 'package:e_shop/src/features/cart/data/models/cart_product_model.dart';

abstract interface class CartProductRemoteDataSource {
  Future<void> addProductCart(String cartId, CartProductModel product);
  Future<List<CartProductModel>?> getProductsCart(String cartId);
  Future<void> updateProductCart(String cartId, CartProductModel product);
  Future<void> deleteProductCart(String cartId, String productId);
}

class CartProductRemoteDataSourceImpl implements CartProductRemoteDataSource {
  CartProductRemoteDataSourceImpl({required this.firebaseFirestore});

  final FirebaseFirestore firebaseFirestore;

  //* Function, which return the oldProductJson
  Future<QuerySnapshot<Map<String, dynamic>>> _getOldProduct(
    CollectionReference<Map<String, dynamic>> products,
    int productId,
  ) async {
    try {
      final oldProductJson = await products
          .where(
            FBFieldNames.productId,
            isEqualTo: productId,
          )
          .get();

      return oldProductJson;
    } on Object {
      rethrow;
    }
  }

  @override
  Future<List<CartProductModel>?> getProductsCart(String cartId) async {
    try {
      final carts = firebaseFirestore.collection(FireDBNames.carts);
      final products =
          await carts.doc(cartId).collection(FireDBNames.products).get();
      if (products.docs.isNotEmpty) {
        final productsModel = products.docs
            .map((e) => CartProductModel.fromJson(e.data()))
            .toList();
        return productsModel;
      }
      return [];
    } on Object {
      rethrow;
    }
  }

  @override
  Future<void> addProductCart(
    String cartId,
    CartProductModel product,
  ) async {
    try {
      final carts = firebaseFirestore.collection(FireDBNames.carts);
      final products = carts.doc(cartId).collection(FireDBNames.products);

      //* Getting old product, with unique id [product.id]
      final oldProductJson = await _getOldProduct(products, product.id);

      if (oldProductJson.docs.isEmpty) {
        //* if product don't exist in db,
        //* we just add this product in cart ⬇️
        final doc = await products.add(product.toJson());
        final productWithId = product.copyWith(docId: doc.id);
        await products.doc(doc.id).update(productWithId.toJson());
      } else {
        final oldProductDoc = oldProductJson.docs.first;
        final oldProduct = CartProductModel.fromJson(
          oldProductDoc.data(),
        );
        final newProduct = oldProduct.copyWith(
          quantity: oldProduct.quantity + product.quantity,
          total: oldProduct.total + product.total,
        );
        if (newProduct.quantity > product.stock) {
          //! Handle error
          throw Exception('New product quantity more than product quantity');
        }
        //* if product exist in db, we update him ⬇️
        await products.doc(oldProductDoc.id).update(
              newProduct.toJson(),
            );
      }
    } on Object {
      rethrow;
    }
  }

  @override
  Future<void> updateProductCart(
    String cartId,
    CartProductModel product,
  ) async {
    try {
      final carts = firebaseFirestore.collection(FireDBNames.carts);
      final products = carts.doc(cartId).collection(FireDBNames.products);

      //* Getting old product with unique id [product.id]
      final oldProductJson = await _getOldProduct(products, product.id);
      final oldProductDoc = oldProductJson.docs.first;
      if (product.quantity == 0) {
        await products.doc(oldProductDoc.id).delete();
      } else {
        //* if product exist in db, we update him ⬇️
        await products.doc(oldProductDoc.id).update(
              product.toJson(),
            );
      }
    } on Object {
      rethrow;
    }
  }

  @override
  Future<void> deleteProductCart(String cartId, String productId) async {
    try {
      final carts = firebaseFirestore.collection(FireDBNames.carts);
      final products = carts.doc(cartId).collection(FireDBNames.products);
      await products.doc(productId).delete();
    } on Object {
      rethrow;
    }
  }
}
