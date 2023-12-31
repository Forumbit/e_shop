import 'package:e_shop/common/repository/product_list_repository.dart';
import 'package:e_shop/features/product/domain/entities/product_entity.dart';
import 'package:e_shop/features/product/domain/entities/product_list_entity.dart';

abstract interface class ProductRepository implements ProductListRepository {
  Future<ProductListEntity> getPopularProducts(int skip);
  Future<ProductEntity> getProduct(int id);
}
