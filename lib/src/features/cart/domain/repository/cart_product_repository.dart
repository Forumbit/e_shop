import 'package:e_shop/src/features/cart/domain/entities/cart_product_entity.dart';

abstract interface class CartProductRepository {
  Future<void> addProductCart(
    String uid,
    CartProductEntity product,
  );
  Future<void> updateProductCart(
    String cartId,
    CartProductEntity product,
  );
  Future<void> deleteProductCart(
    String cartId,
    String productId,
  );
}
