import 'package:e_shop/features/cart/data/datasources/cart_product_remote_data_source.dart';
import 'package:e_shop/features/cart/data/datasources/cart_remote_data_source.dart';
import 'package:e_shop/features/cart/data/mapper/cart_product_mapper.dart';
import 'package:e_shop/features/cart/domain/entities/cart_product_entity.dart';
import 'package:e_shop/features/cart/domain/repository/cart_product_repository.dart';

class CartProductRepositoryImpl implements CartProductRepository {
  CartProductRepositoryImpl({
    required this.cartProductRemoteDataSource,
    required this.cartRemoteDataSource,
  });

  final CartProductRemoteDataSource cartProductRemoteDataSource;
  final CartRemoteDataSource cartRemoteDataSource;

  @override
  Future<void> addProductCart(String uid, CartProductEntity product) async {
    try {
      final cart = await cartRemoteDataSource.getCart(uid);
      final String? cartId = cart?.docId;
      if (cart == null || cartId == null) return;
      final productModel = CartProductMapper.fromEntity(product);
      await cartProductRemoteDataSource.addProductCart(
        cartId,
        productModel,
      );
    } on Object {
      rethrow;
    }
  }

  @override
  Future<void> updateProductCart(
    String cartId,
    CartProductEntity product,
  ) async {
    try {
      final productModel = CartProductMapper.fromEntity(product);
      await cartProductRemoteDataSource.updateProductCart(
        cartId,
        productModel,
      );
    } on Object {
      rethrow;
    }
  }

  @override
  Future<void> deleteProductCart(
    String cartId,
    String productId,
  ) async {
    try {
      await cartProductRemoteDataSource.deleteProductCart(
        cartId,
        productId,
      );
    } on Object {
      rethrow;
    }
  }
}
