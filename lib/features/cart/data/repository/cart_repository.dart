import 'dart:developer';

import 'package:e_shop/features/cart/data/datasources/cart_product_remote_data_source.dart';
import 'package:e_shop/features/cart/data/datasources/cart_remote_data_source.dart';
import 'package:e_shop/features/cart/data/mapper/cart_mapper.dart';
import 'package:e_shop/features/cart/domain/entities/cart_entity.dart';
import 'package:e_shop/features/cart/domain/repository/cart_repository.dart';

class CartRepositoryImpl implements CartRepository {
  CartRepositoryImpl({
    required this.cartRemoteDataSource,
    required this.cartProductRemoteDataSource,
  });

  final CartRemoteDataSource cartRemoteDataSource;
  final CartProductRemoteDataSource cartProductRemoteDataSource;

  @override
  Future<void> createCart(CartEntity cart) async {
    try {
      final cartModel = CartMapper.fromEntity(cart);
      await cartRemoteDataSource.createCart(cartModel);
    } catch (e) {
      log(e.toString());
      throw Exception(e);
    }
  }

  @override
  Future<CartEntity?> getCart(String uid) async {
    try {
      final cartModel = await cartRemoteDataSource.getCart(uid);
      if (cartModel == null) return null;
      final products = cartModel.docId != null
          ? await cartProductRemoteDataSource.getProductsCart(cartModel.docId!)
          : null;
      final finalCartModel = cartModel.copyWith(products: products);
      return CartMapper.toEntity(finalCartModel);
    } catch (e) {
      log(e.toString());
      throw Exception(e);
    }
  }

  @override
  Future<void> updateCart(CartEntity cartEntity) async {
    try {
      final cartModel = CartMapper.fromEntity(cartEntity);
      await cartRemoteDataSource.updateCart(cartModel);
    } catch (e) {
      log(e.toString());
      throw Exception(e);
    }
  }

  @override
  Future<void> deleteCart() {
    // TODO: implement deleteCart
    throw UnimplementedError();
  }
}
