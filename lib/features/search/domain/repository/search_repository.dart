import 'package:e_shop/common/repository/product_list_repository.dart';
import 'package:e_shop/features/product/domain/entities/product_list_entity.dart';

abstract interface class SearchRepository implements ProductListRepository {
  Future<ProductListEntity> getProductsOfSearch(int skip, String query);
}