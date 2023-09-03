import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_product_model.freezed.dart';
part 'cart_product_model.g.dart';

@freezed
class CartProductModel with _$CartProductModel {
  factory CartProductModel({
    required String? docId,
    required int id,
    required int price,
    required int stock,
    required int quantity,
    required String thumbnail,
    required String title,
    required int total,
  }) = _CartProductModel;

  factory CartProductModel.fromJson(Map<String, dynamic> json) =>
      _$CartProductModelFromJson(json);
}