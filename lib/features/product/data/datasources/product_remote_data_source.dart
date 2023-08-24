import 'package:dio/dio.dart';
import 'package:e_shop/common/constants/app_remote_constants.dart';
import 'package:e_shop/features/product/data/models/product/product_model.dart';
import 'package:e_shop/features/product/data/models/product_list/product_list_model.dart';

abstract interface class ProductRemoteDataSource {
  Future<ProductListModel> getPopularProducts(int skip);
  Future<ProductModel> getProduct(int id);

  // Future<List<ProductModel>> getCategoryProducts(String category);
  // Future<List<ProductModel>> getSearchProducts(String query);
  // Future<List<String>> getProductsCategories();
}

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  ProductRemoteDataSourceImpl({required this.dio});

  final Dio dio;

  @override
  Future<ProductListModel> getPopularProducts(int skip) async {
    final response = await dio.get(
        '${DummyJsonApiConstants.host}/products/?limit=${DummyJsonApiConstants.limitParameter}&skip=$skip');
    final json = response.data as Map<String, dynamic>;
    final products = ProductListModel.fromJson(json);
    return products;
  }

  @override
  Future<ProductModel> getProduct(int id) async {
    final response = await dio.get('${DummyJsonApiConstants.host}/products/$id');
    final json = response.data as Map<String, dynamic>;
    final product = ProductModel.fromJson(json);
    return product;
  }

  // @override
  // Future<List<String>> getProductsCategories() async {
  //   final response = await dio.get('https://dummyjson.com/products/categories');
  //   final categories = response.data as List<dynamic>;
  //   return categories.map((e) => e.toString()).toList();
  // }

  // @override
  // Future<List<ProductModel>> getCategoryProducts(String category) async {
  //   final response =
  //       await dio.get('https://dummyjson.com/products/category/$category');
  //   final json = response.data['products'] as List<dynamic>;
  //   final products = json.map((e) => ProductModel.fromJson(e)).toList();
  //   return products;
  // }

  // @override
  // Future<List<ProductModel>> getSearchProducts(String query) async {
  //   final response =
  //       await dio.get('https://dummyjson.com/products/search/?q=$query');
  //   final json = response.data['products'] as List<dynamic>;
  //   final products = json.map((e) => ProductModel.fromJson(e)).toList();
  //   return products;
  // }
}
