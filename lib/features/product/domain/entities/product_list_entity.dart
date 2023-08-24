import 'package:e_shop/features/product/domain/entities/product_entity.dart';

class ProductListEntity {
  final List<ProductEntity> products;
  final int total;
  final int skip;
  final int limit;

  ProductListEntity({
    required this.products,
    required this.total,
    required this.skip,
    required this.limit,
  });

  

  ProductListEntity copyWith({
    List<ProductEntity>? products,
    int? total,
    int? skip,
    int? limit,
  }) {
    return ProductListEntity(
      products: products ?? this.products,
      total: total ?? this.total,
      skip: skip ?? this.skip,
      limit: limit ?? this.limit,
    );
  }
}
