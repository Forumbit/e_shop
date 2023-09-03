import 'dart:developer';

import 'package:dio/dio.dart';
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
          'limit': ApiConfiguration.limitQueryParameter,
          'skip': skip.toString(),
          'q': query,
        },
      );
      return await getProducts(dio, url);
    } catch (e) {
      log(e.toString());
      throw Exception(e);
    }
  }
}
