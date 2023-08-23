import 'package:e_shop/features/product/domain/entities/product_entity.dart';

abstract interface class ProductRepository {
  Future<List<ProductEntity>> getPopularProducts();
  Future<ProductEntity> getProduct(int id);
}
