import 'package:e_shop/common/utils/logger_utils.dart';
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
    } on Object catch (e, s) {
      logger.e(
        'Get categories repo',
        error: e,
        stackTrace: s,
      );
      rethrow;
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
    } on Object catch (e, s) {
      logger.e(
        'Get products of category repo',
        error: e,
        stackTrace: s,
      );
      rethrow;
    }
  }

  @override
  Future<ProductListEntity> getProducts(int skip,
      {String parameter = ''}) async {
    try {
      return await getProductsOfCategory(parameter, skip);
    } on Object catch (e, s) {
      logger.e(
        'Get products repo',
        error: e,
        stackTrace: s,
      );
      rethrow;
    }
  }
}
