import 'package:e_shop/src/features/cart/domain/entities/cart_product_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_entity.freezed.dart';

@freezed
class CartEntity with _$CartEntity {
  factory CartEntity({
    required String? docId,
    required String uid,
    required List<CartProductEntity>? products,
  }) = _CartEntity;
}
