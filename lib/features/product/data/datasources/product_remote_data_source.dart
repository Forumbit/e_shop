import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:e_shop/common/utils/mixins/product_remote_datasource_mixin.dart';
import 'package:e_shop/common/configuration.dart';
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
    } catch (e) {
      log(e.toString());
      throw Exception(e);
    }
  }

  @override
  Future<ProductListModel> getPopularProducts(int skip) async {
    try {
      final url = Uri.http(
        ApiConfiguration.host,
        '/products',
        {
          'limit': ApiConfiguration.limitQueryParameter,
          'skip': skip.toString(),
        },
      );
      return await getProducts(dio, url);
    } catch (e) {
      log(e.toString());
      throw Exception(e);
    }
  }
}
