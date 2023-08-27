import 'package:dio/dio.dart';
import 'package:e_shop/common/mixins/product_remote_datasource_mixin.dart';
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
  CategoryRemoteDataSourceImpl(this.dio);

  final Dio dio;

  @override
  Future<List<String>> getCategories() async {
    final url = Uri.http(
      ApiConfiguration.host,
      '/products/categories',
    ).toString();
    final response = await dio.get(url);
    final json = response.data;
    final categories = List<String>.from(json);
    return categories;
  }

  @override
  Future<ProductListModel> getProductsOfCategory(
    String category,
    int skip,
  ) async {
    final url = Uri.http(
      ApiConfiguration.host,
      'products/category/$category',
      {
        'limit': ApiConfiguration.limitQueryParameter,
        'skip': skip.toString(),
      },
    );
    return await getProducts(dio, url);
  }
}
