import 'package:dio/dio.dart';
import 'package:e_shop/src/core/config/configuration.dart';
import 'package:e_shop/src/core/common/utils/mixins/product_remote_datasource_mixin.dart';
import 'package:e_shop/src/features/product/data/models/product_list/product_list_model.dart';

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
    } on Object {
      rethrow;
    }
  }
}
