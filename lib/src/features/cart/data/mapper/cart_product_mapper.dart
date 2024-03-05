import 'package:e_shop/src/features/cart/data/models/cart_product_model.dart';
import 'package:e_shop/src/features/cart/domain/entities/cart_product_entity.dart';
import 'package:e_shop/src/features/product/data/models/product/product_model.dart';
import 'package:e_shop/src/features/product/domain/entities/product_entity.dart';

class CartProductMapper {
  static CartProductModel fromEntity(CartProductEntity entity) {
    return CartProductModel(
      docId: entity.docId,
      id: entity.id,
      price: entity.price,
      stock: entity.stock,
      quantity: entity.quantity,
      thumbnail: entity.thumbnail,
      title: entity.title,
      total: entity.total,
    );
  }

  static CartProductEntity toEntity(CartProductModel model) {
    return CartProductEntity(
      docId: model.docId,
      id: model.id,
      price: model.price,
      stock: model.stock,
      quantity: model.quantity,
      thumbnail: model.thumbnail,
      title: model.title,
      total: model.total,
    );
  }

  static CartProductModel fromProductModel(ProductModel model) {
    return CartProductModel(
      docId: null,
      id: model.id,
      price: model.price,
      stock: model.stock,
      quantity: 1,
      thumbnail: model.thumbnail,
      title: model.title,
      total: model.price,
    );
  }

  static CartProductEntity fromProductEntity(ProductEntity entity) {
    return CartProductEntity(
      docId: null,
      id: entity.id,
      price: entity.price,
      stock: entity.stock,
      quantity: 1,
      thumbnail: entity.thumbnail,
      title: entity.title,
      total: entity.price,
    );
  }
}
