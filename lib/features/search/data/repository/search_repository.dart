import 'dart:developer';

import 'package:e_shop/features/product/data/mapper/product_list_mapper.dart';
import 'package:e_shop/features/product/domain/entities/product_list_entity.dart';
import 'package:e_shop/features/search/data/datasources/search_remote_datasource.dart';
import 'package:e_shop/features/search/domain/repository/search_repository.dart';

class SearchRepositoryImpl implements SearchRepository {
  SearchRepositoryImpl({required this.searchRemoteDataSource});

  final SearchRemoteDataSource searchRemoteDataSource;

  @override
  Future<ProductListEntity> getProductsOfSearch(int skip, String query) async {
    try {
      final productListModel = await searchRemoteDataSource.getProductsOfSearch(
        skip,
        query,
      );
      return ProductListMapper.toEntity(productListModel);
    } catch (e) {
      log(e.toString());
      throw Exception(e);
    }
  }

  @override
  Future<ProductListEntity> getProducts(int skip, {String parameter = ''}) {
    return getProductsOfSearch(skip, parameter);
  }
}
