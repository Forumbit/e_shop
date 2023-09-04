import 'package:e_shop/features/product/data/models/product/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'product_list_model.freezed.dart';
part 'product_list_model.g.dart';

@freezed
class ProductListModel with _$ProductListModel {
  factory ProductListModel({
    required List<ProductModel> products,
    required int total,
    required int skip,
    required int limit,
  }) = _ProductListModel;

  factory ProductListModel.fromJson(Map<String, dynamic> json) =>
      _$ProductListModelFromJson(json);
}
