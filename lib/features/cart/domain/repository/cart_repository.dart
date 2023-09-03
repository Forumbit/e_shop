import 'package:e_shop/features/cart/domain/entities/cart_entity.dart';

abstract interface class CartRepository {
  Future<void> createCart(CartEntity cart);
  Future<CartEntity?> getCart(String uid);
  Future<void> updateCart(CartEntity cartEntity);
  Future<void> deleteCart();
}
