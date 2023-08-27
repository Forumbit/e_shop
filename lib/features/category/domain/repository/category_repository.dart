import 'package:e_shop/common/product_list_repository/product_list_repository.dart';
import 'package:e_shop/features/product/domain/entities/product_list_entity.dart';

abstract interface class CategoryRepository implements ProductListRepository {
  Future<List<String>> getCategories();
  Future<ProductListEntity> getProductsOfCategory(
    String category,
    int skip,
  );
}
