import 'dart:developer';

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
      log(e.toString());
      throw Exception(e);
    }
  }

  @override
  Future<ProductListEntity> getProducts(int skip, {String parameter = ''}) async {
    return await getPopularProducts(skip);
  }

  @override
  Future<ProductEntity> getProduct(int id) async {
    try {
      final productModel = await productRemoteDataSource.getProduct(id);
      final productEntity = ProductMapper.toEntity(productModel);
      return productEntity;
    } catch (e) {
      log(e.toString());
      throw Exception(e);
    }
  }
}
