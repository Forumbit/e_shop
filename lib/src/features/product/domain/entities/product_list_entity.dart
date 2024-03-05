import 'package:e_shop/src/features/product/domain/entities/product_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_list_entity.freezed.dart';

@freezed
class ProductListEntity with _$ProductListEntity {
  factory ProductListEntity({
    required List<ProductEntity> products,
    required int total,
    required int skip,
    required int limit,
  }) = _ProductListEntity;
}
