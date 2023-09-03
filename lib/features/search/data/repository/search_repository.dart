import 'package:e_shop/common/utils/logger_utils.dart';
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
    } on Object catch (e, s) {
      logger.e(
        'Get products of search repo',
        error: e,
        stackTrace: s,
      );
      rethrow;
    }
  }

  @override
  Future<ProductListEntity> getProducts(int skip, {String parameter = ''}) {
    try {
      return getProductsOfSearch(skip, parameter);
    } on Object catch (e, s) {
      logger.e(
        'Get products repo',
        error: e,
        stackTrace: s,
      );
      rethrow;
    }
  }
}
