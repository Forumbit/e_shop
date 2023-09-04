import 'package:e_shop/features/cart/data/mapper/cart_product_mapper.dart';
import 'package:e_shop/features/cart/data/models/cart_model.dart';
import 'package:e_shop/features/cart/domain/entities/cart_entity.dart';

class CartMapper {
  static CartModel fromEntity(CartEntity entity) {
    return CartModel(
      docId: entity.docId,
      uid: entity.uid,
      products:
          entity.products?.map((e) => CartProductMapper.fromEntity(e)).toList(),
    );
  }

  static CartEntity toEntity(CartModel model) {
    return CartEntity(
      docId: model.docId,
      uid: model.uid,
      products:
          model.products?.map((e) => CartProductMapper.toEntity(e)).toList(),
    );
  }
}
