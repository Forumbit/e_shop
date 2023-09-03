import 'package:dio/dio.dart';
import 'package:e_shop/common/utils/logger_utils.dart';
import 'package:e_shop/config/configuration.dart';
import 'package:e_shop/common/utils/mixins/product_remote_datasource_mixin.dart';
import 'package:e_shop/features/product/data/models/product_list/product_list_model.dart';

abstract interface class SearchRemoteDataSource {
  Future<ProductListModel> getProductsOfSearch(skip, query);
}

class SearchRemoteDataSourceImpl
    with ProductRemoteDataSourceMixin
    implements SearchRemoteDataSource {
  SearchRemoteDataSourceImpl({required this.dio});

  final Dio dio;

  @override
  Future<ProductListModel> getProductsOfSearch(skip, query) async {
    try {
      final url = Uri.http(
        ApiConfiguration.host,
        '/products/search',
        {
          ApiConfiguration.limitText: ApiConfiguration.limitQueryParameter,
          ApiConfiguration.skipText: skip.toString(),
          ApiConfiguration.queryText: query,
        },
      );
      return await getProducts(dio, url);
    } on Object catch (e, s) {
      logger.e(
        'Get products of search remote',
        error: e,
        stackTrace: s,
      );
      rethrow;
    }
  }
}
