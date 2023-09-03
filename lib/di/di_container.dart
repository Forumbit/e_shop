import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:e_shop/factories/screen_factory.dart';
import 'package:e_shop/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:e_shop/features/auth/data/repository/auth_repository.dart';
import 'package:e_shop/features/auth/domain/repository/auth_repository.dart';
import 'package:e_shop/features/cart/data/datasources/cart_product_remote_data_source.dart';
import 'package:e_shop/features/cart/data/datasources/cart_remote_data_source.dart';
import 'package:e_shop/features/cart/data/repository/cart_product_repository.dart';
import 'package:e_shop/features/cart/data/repository/cart_repository.dart';
import 'package:e_shop/features/cart/domain/repository/cart_product_repository.dart';
import 'package:e_shop/features/cart/domain/repository/cart_repository.dart';

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
import 'package:firebase_auth/firebase_auth.dart';

class DIContainer {
  final _dio = Dio();
  //* ============= app feature =============
  ScreenFactory _makeScreenFactory() => ScreenFactoryDefault();
  AppRoute makeRoute() => AppGoRoute(screenFactory: _makeScreenFactory());

  //* ============= auth feature =============
  AuthRemoteDataSource _getAuthRemoteDataSource() =>
      AuthRemoteDataSourceImpl(FirebaseAuth.instance);

  AuthRepository getAuthRepository() =>
      AuthRepositoryImpl(_getAuthRemoteDataSource());

  //* ============= cart feature ===============
  CartRemoteDataSource _getCartRemoteDataSource() => CartRemoteDataSourceImpl(
        firebaseFirestore: FirebaseFirestore.instance,
      );
  CartProductRemoteDataSource _getCartProductRemoteDataSource() =>
      CartProductRemoteDataSourceImpl(
        FirebaseFirestore.instance,
      );

  CartRepository getCartRepository() => CartRepositoryImpl(
      cartRemoteDataSource: _getCartRemoteDataSource(),
      cartProductRemoteDataSource: _getCartProductRemoteDataSource());

  CartProductRepository getCartProductRepository() => CartProductRepositoryImpl(
        cartProductRemoteDataSource: _getCartProductRemoteDataSource(),
        cartRemoteDataSource: _getCartRemoteDataSource(),
      );

  //* ============= product feature =============
  ProductRemoteDataSource _getProductRemoteDataSource() =>
      ProductRemoteDataSourceImpl(dio: _dio);

  ProductRepository getProductRepository() => ProductRepositoryImpl(
      productRemoteDataSource: _getProductRemoteDataSource());

  //* ============= category feature =============
  CategoryRemoteDataSource _getCategoryRemoteDataSource() =>
      CategoryRemoteDataSourceImpl(_dio);

  CategoryRepository getCategoryRepository() =>
      CategoryRepositoryImpl(_getCategoryRemoteDataSource());

  //* ============= search feature =============
  SearchRemoteDataSource _getSearchRemoteDataSource() =>
      SearchRemoteDataSourceImpl(_dio);

  SearchRepository getSearchRepository() =>
      SearchRepositoryImpl(_getSearchRemoteDataSource());
}
