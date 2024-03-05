import 'package:e_shop/src/features/cart/data/models/cart_product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
class CartModel with _$CartModel {
  factory CartModel({
    required String? docId,
    required String uid,
    required List<CartProductModel>? products,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}
