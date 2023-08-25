import 'package:e_shop/features/product/data/mapper/product_mapper.dart';
import 'package:e_shop/features/product/data/models/product_list/product_list_model.dart';
import 'package:e_shop/features/product/domain/entities/product_list_entity.dart';

class ProductListMapper {
  static ProductListModel fromEntity(ProductListEntity entity) {
    return ProductListModel(
      products: entity.products
          .map((entity) => ProductMapper.fromEntity(entity))
          .toList(),
      total: entity.total,
      skip: entity.skip,
      limit: entity.limit,
    );
  }

  static ProductListEntity toEntity(ProductListModel model) {
    return ProductListEntity(
      products:
          model.products.map((model) => ProductMapper.toEntity(model)).toList(),
      total: model.total,
      skip: model.skip,
      limit: model.limit,
    );
  }
}
