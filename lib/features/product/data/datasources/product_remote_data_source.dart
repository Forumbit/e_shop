import 'package:dio/dio.dart';
import 'package:e_shop/common/utils/logger_utils.dart';
import 'package:e_shop/common/utils/mixins/product_remote_datasource_mixin.dart';
import 'package:e_shop/config/configuration.dart';
import 'package:e_shop/features/product/data/models/product/product_model.dart';
import 'package:e_shop/features/product/data/models/product_list/product_list_model.dart';

abstract interface class ProductRemoteDataSource {
  Future<ProductListModel> getPopularProducts(int skip);
  Future<ProductModel> getProduct(int id);
}

class ProductRemoteDataSourceImpl
    with ProductRemoteDataSourceMixin
    implements ProductRemoteDataSource {
  ProductRemoteDataSourceImpl({required this.dio});

  final Dio dio;

  @override
  Future<ProductModel> getProduct(int id) async {
    try {
      final url = Uri.http(
        ApiConfiguration.host,
        '/products/$id',
      ).toString();

      final response = await dio.get(url);

      final json = response.data;
      final product = ProductModel.fromJson(json);
      return product;
    } on Object catch (e, s) {
      logger.e(
        'Get product remote',
        error: e,
        stackTrace: s,
      );
      rethrow;
    }
  }

  @override
  Future<ProductListModel> getPopularProducts(int skip) async {
    try {
      final url = Uri.http(
        ApiConfiguration.host,
        '/products',
        {
          ApiConfiguration.limitText: ApiConfiguration.limitQueryParameter,
          ApiConfiguration.skipText: skip.toString(),
        },
      );
      return await getProducts(dio, url);
    } on Object catch (e, s) {
      logger.e(
        'Get popular product remote',
        error: e,
        stackTrace: s,
      );
      rethrow;
    }
  }
}
