import 'package:dio/dio.dart';
import 'package:e_shop/factories/screen_factory.dart';

import 'package:e_shop/features/category/data/datasources/category_remote_datasource.dart';
import 'package:e_shop/features/category/data/repository/category_repository.dart';
import 'package:e_shop/features/category/domain/repository/category_repository.dart';
import 'package:e_shop/features/product/data/datasources/product_remote_data_source.dart';
import 'package:e_shop/features/product/data/repository/product_repository.dart';
import 'package:e_shop/features/product/domain/repository/product_repository.dart';
import 'package:e_shop/features/search/data/datasources/search_remote_datasource.dart';
import 'package:e_shop/features/search/data/repository/search_repository.dart';
import 'package:e_shop/features/search/domain/repository/search_repository.dart';
import 'package:e_shop/main.dart';
import 'package:e_shop/route/app_go_route.dart';

class DIContainer {
  final _dio = Dio();

  ScreenFactory _makeScreenFactory() => ScreenFactoryDefault();
  AppRoute makeRoute() => AppGoRoute(screenFactory: _makeScreenFactory());

  //* ========== product feature ==========
  ProductRemoteDataSource _getProductRemoteDataSource() =>
      ProductRemoteDataSourceImpl(dio: _dio);

  ProductRepository getProductRepository() => ProductRepositoryImpl(
      productRemoteDataSource: _getProductRemoteDataSource());

  //* ========== category feature ==========
  CategoryRemoteDataSource _getCategoryRemoteDataSource() =>
      CategoryRemoteDataSourceImpl(_dio);

  CategoryRepository getCategoryRepository() =>
      CategoryRepositoryImpl(_getCategoryRemoteDataSource());

  //* ========== search feature ==========
  SearchRemoteDataSource _getSearchRemoteDataSource() =>
      SearchRemoteDataSourceImpl(_dio);

   SearchRepository getSearchRepository() =>
       SearchRepositoryImpl(_getSearchRemoteDataSource());
}
