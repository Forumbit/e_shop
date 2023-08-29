import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:e_shop/features/product/data/models/product_list/product_list_model.dart';

mixin ProductRemoteDataSourceMixin {
  Future<ProductListModel> getProducts(Dio dio, Uri uri) async {
    try {
      final response = await dio.get(uri.toString());
      final json = response.data;
      final products = ProductListModel.fromJson(json);
      return products;
    } catch (e) {
      log(e.toString());
      throw Exception(e);
    }
  }
}
