import 'package:dio/dio.dart';
import 'package:e_shop/common/utils/logger_utils.dart';
import 'package:e_shop/common/utils/mixins/product_remote_datasource_mixin.dart';
import 'package:e_shop/config/configuration.dart';
import 'package:e_shop/features/product/data/models/product_list/product_list_model.dart';

abstract interface class CategoryRemoteDataSource {
  Future<List<String>> getCategories();
  Future<ProductListModel> getProductsOfCategory(
    String category,
    int skip,
  );
}

class CategoryRemoteDataSourceImpl
    with ProductRemoteDataSourceMixin
    implements CategoryRemoteDataSource {
  CategoryRemoteDataSourceImpl({required this.dio});

  final Dio dio;

  @override
  Future<List<String>> getCategories() async {
    try {
      final url = Uri.http(
        ApiConfiguration.host,
        '/products/categories',
      ).toString();
      final response = await dio.get(url);
      final json = response.data;
      final categories = List<String>.from(json);
      return categories;
    } on Object catch (e, s) {
      logger.e(
        'Get categories remote',
        error: e,
        stackTrace: s,
      );
      rethrow;
    }
  }

  @override
  Future<ProductListModel> getProductsOfCategory(
    String category,
    int skip,
  ) async {
    try {
      final url = Uri.http(
        ApiConfiguration.host,
        'products/category/$category',
        {
          'limit': ApiConfiguration.limitQueryParameter,
          'skip': skip.toString(),
        },
      );
      return await getProducts(dio, url);
    } on Object catch (e, s) {
      logger.e(
        'Get products of category remote',
        error: e,
        stackTrace: s,
      );
      rethrow;
    }
  }
}
