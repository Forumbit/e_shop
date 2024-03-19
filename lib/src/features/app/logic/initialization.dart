import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_shop/src/features/app/model/dependencies.dart';
import 'package:e_shop/src/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:e_shop/src/features/auth/data/repository/auth_repository.dart';
import 'package:e_shop/src/features/cart/data/datasources/cart_product_remote_data_source.dart';
import 'package:e_shop/src/features/cart/data/datasources/cart_remote_data_source.dart';
import 'package:e_shop/src/features/cart/data/repository/cart_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:dio/dio.dart';
import 'package:e_shop/src/features/auth/domain/repository/auth_repository.dart';
import 'package:e_shop/src/features/cart/data/repository/cart_product_repository.dart';
import 'package:e_shop/src/features/cart/domain/repository/cart_product_repository.dart';
import 'package:e_shop/src/features/cart/domain/repository/cart_repository.dart';

import 'package:e_shop/src/features/category/data/datasources/category_remote_datasource.dart';
import 'package:e_shop/src/features/category/data/repository/category_repository.dart';
import 'package:e_shop/src/features/category/domain/repository/category_repository.dart';
import 'package:e_shop/src/features/product/data/datasources/product_remote_data_source.dart';
import 'package:e_shop/src/features/product/data/repository/product_repository.dart';
import 'package:e_shop/src/features/product/domain/repository/product_repository.dart';
import 'package:e_shop/src/features/search/data/datasources/search_remote_datasource.dart';
import 'package:e_shop/src/features/search/data/repository/search_repository.dart';
import 'package:e_shop/src/features/search/domain/repository/search_repository.dart';

final class Initialization {
  Future<Dependencies> initialize() async {
    final dio = Dio();
    final cartRepositories = await _getCartRepositories();
    return Dependencies(
      cartRepository: cartRepositories.$1,
      cartProductRepository: cartRepositories.$2,
      authRepository: await _getAuthRepository(),
      productRepository: await _getProductRepository(dio),
      categoryRepository: await _getCategoryRepository(dio),
      searchRepository: await _getSearchRepository(dio),
    );
  }

  //* ============= auth feature =============
  FutureOr<AuthRepository> _getAuthRepository() {
    final firebaseAuth = FirebaseAuth.instance;
    final authRemoteDataSource = AuthRemoteDataSourceImpl(firebaseAuth);
    return AuthRepositoryImpl(authRemoteDataSource);
  }

  //* ============= cart feature ===============
  FutureOr<(CartRepository, CartProductRepository)> _getCartRepositories() {
    final firebaseStore = FirebaseFirestore.instance;
    final cartRemoteDataSource = CartRemoteDataSourceImpl(
      firebaseFirestore: firebaseStore,
    );

    final cartProductRemoteDataSource = CartProductRemoteDataSourceImpl(
      firebaseFirestore: firebaseStore,
    );

    final cartRepository = CartRepositoryImpl(
      cartRemoteDataSource: cartRemoteDataSource,
      cartProductRemoteDataSource: cartProductRemoteDataSource,
    );

    final cartProductRepository = CartProductRepositoryImpl(
      cartProductRemoteDataSource: cartProductRemoteDataSource,
      cartRemoteDataSource: cartRemoteDataSource,
    );
    return (cartRepository, cartProductRepository);
  }

  //* ============= product feature =============
  FutureOr<ProductRepository> _getProductRepository(Dio dio) {
    final productRemoteDataSource = ProductRemoteDataSourceImpl(dio: dio);
    return ProductRepositoryImpl(
      productRemoteDataSource: productRemoteDataSource,
    );
  }

  //* ============= category feature =============
  FutureOr<CategoryRepository> _getCategoryRepository(Dio dio) {
    final categoryRemoteDataSource = CategoryRemoteDataSourceImpl(dio: dio);
    return CategoryRepositoryImpl(
        categoryRemoteDatasource: categoryRemoteDataSource);
  }

  //* ============= search feature =============
  FutureOr<SearchRepository> _getSearchRepository(Dio dio) {
    final searchRemoteDataSource = SearchRemoteDataSourceImpl(dio: dio);
    return SearchRepositoryImpl(
      searchRemoteDataSource: searchRemoteDataSource,
    );
  }
}
