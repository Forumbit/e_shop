import 'package:e_shop/features/product/data/datasources/product_remote_data_source.dart';
import 'package:e_shop/features/product/data/mapper/product_list_mapper.dart';
import 'package:e_shop/features/product/data/mapper/product_mapper.dart';
import 'package:e_shop/features/product/domain/entities/product_entity.dart';
import 'package:e_shop/features/product/domain/entities/product_list_entity.dart';
import 'package:e_shop/features/product/domain/repository/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource productRemoteDataSource;

  ProductRepositoryImpl({required this.productRemoteDataSource});

  @override
  Future<ProductListEntity> getPopularProducts(int skip) async {
    try {
      final productListModel =
          await productRemoteDataSource.getPopularProducts(skip);
      final productEntities = ProductListMapper.toEntity(productListModel);
      return productEntities;
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }

  @override
  Future<ProductEntity> getProduct(int id) async {
    try {
      final productModel = await productRemoteDataSource.getProduct(id);
      final productEntity = ProductMapper.toEntity(productModel);
      return productEntity;
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }

  // @override
  // Future<List<ProductEntity>> getCategoryProducts(String category) async {
  //   try {
  //     final productModels =
  //         await productRemoteDataSource.getCategoryProducts(category);
  //     final productEntities = productModels
  //         .map((e) => ProductMapper.toEntity(e)).toList();
  //     return productEntities;
  //   } catch (e) {
  //     print(e);
  //     throw Exception(e);
  //   }
  // }

  // @override
  // Future<List<String>> getProductsCategories() async {
  //   try {
  //     final categories = await productRemoteDataSource.getProductsCategories();
  //     return categories;
  //   } catch (e) {
  //     print(e);
  //     throw Exception(e);
  //   }
  // }

  // @override
  // Future<List<ProductEntity>> getSearchProducts(String query) async {
  //   try {
  //     final productModels =
  //         await productRemoteDataSource.getSearchProducts(query);
  //     final productEntities = productModels
  //         .map((e) => ProductMapper.toEntity(e)).toList();
  //     return productEntities;
  //   } catch (e) {
  //     print(e);
  //     throw Exception(e);
  //   }
  // }
}
