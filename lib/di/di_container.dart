import 'package:dio/dio.dart';

import 'package:e_shop/features/category/data/datasources/category_remote_datasource.dart';
import 'package:e_shop/features/category/data/repository/category_repository.dart';
import 'package:e_shop/features/category/domain/repository/category_repository.dart';
import 'package:e_shop/features/category/presentation/bloc/category_list/category_list_bloc.dart';
import 'package:e_shop/features/category/presentation/pages/category_list_page.dart';
import 'package:e_shop/features/product/data/datasources/product_remote_data_source.dart';
import 'package:e_shop/features/product/data/repository/product_repository.dart';
import 'package:e_shop/features/product/domain/enum/product_list_enum.dart';
import 'package:e_shop/features/product/domain/repository/product_repository.dart';
import 'package:e_shop/features/product/presentation/bloc/product_detail/product_detail_bloc.dart';
import 'package:e_shop/features/product/presentation/bloc/product_list/product_list_bloc.dart';
import 'package:e_shop/features/product/presentation/pages/product_detail_page.dart';
import 'package:e_shop/features/product/presentation/pages/product_list_page.dart';
import 'package:e_shop/main.dart';
import 'package:e_shop/route/app_go_route.dart';
import 'package:flutter/material.dart';
import 'package:e_shop/features/product/presentation/pages/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'screen_factory.dart';

AppFactory appFactory() => _AppFactoryImpl();

class _AppFactoryImpl implements AppFactory {
  final _diContainer = _DIContainer();

  _AppFactoryImpl();

  @override
  Widget makeApp() => MyApp(appRoute: _diContainer._makeRoute());
}

class _DIContainer {
  final _dio = Dio();

  ScreenFactory _makeScreenFactory() => _ScreenFactoryDefault(this);
  AppRoute _makeRoute() => AppGoRoute(screenFactory: _makeScreenFactory());

  // ========== product feature ==========
  ProductRemoteDataSource _getProductRemoteDataSource() =>
      ProductRemoteDataSourceImpl(dio: _dio);

  ProductRepository _getProductRepository() => ProductRepositoryImpl(
      productRemoteDataSource: _getProductRemoteDataSource());

  CategoryRemoteDataSource _getCategoryRemoteDataSource() =>
      CategoryRemoteDataSourceImpl(_dio);

  CategoryRepository _getCategoryRepository() =>
      CategoryRepositoryImpl(_getCategoryRemoteDataSource());
}
