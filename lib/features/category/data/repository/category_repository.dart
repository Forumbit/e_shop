import 'package:e_shop/features/category/data/datasources/category_remote_datasource.dart';
import 'package:e_shop/features/category/domain/repository/category_repository.dart';
import 'package:e_shop/features/product/data/mapper/product_list_mapper.dart';
import 'package:e_shop/features/product/domain/entities/product_list_entity.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  CategoryRepositoryImpl({required this.categoryRemoteDatasource});

  final CategoryRemoteDataSource categoryRemoteDatasource;

  @override
  Future<List<String>> getCategories() async {
    try {
      return await categoryRemoteDatasource.getCategories();
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<ProductListEntity> getProductsOfCategory(
    String category,
    int skip,
  ) async {
    try {
      final productListModel =
          await categoryRemoteDatasource.getProductsOfCategory(category, skip);
      return ProductListMapper.toEntity(productListModel);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<ProductListEntity> getProducts(int skip,
      {String parameter = ''}) async {
    return await getProductsOfCategory(parameter, skip);
  }
}
