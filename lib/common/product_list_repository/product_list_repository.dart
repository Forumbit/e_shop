import 'package:e_shop/features/product/domain/entities/product_list_entity.dart';

abstract interface class ProductListRepository {
  Future<ProductListEntity> getProducts(int skip, {String parameter = ''});
}
