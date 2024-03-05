import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_product_entity.freezed.dart';

@freezed
class CartProductEntity with _$CartProductEntity {
  factory CartProductEntity({
    required String? docId,
    required int id,
    required int price,
    required int quantity,
    required int stock,
    required String thumbnail,
    required String title,
    required int total,
  }) = _CartProductEntity;
}