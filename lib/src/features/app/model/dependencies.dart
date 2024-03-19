// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_shop/src/features/auth/domain/repository/auth_repository.dart';
import 'package:e_shop/src/features/cart/domain/repository/cart_product_repository.dart';
import 'package:e_shop/src/features/cart/domain/repository/cart_repository.dart';
import 'package:e_shop/src/features/category/domain/repository/category_repository.dart';
import 'package:e_shop/src/features/product/domain/repository/product_repository.dart';
import 'package:e_shop/src/features/search/domain/repository/search_repository.dart';

class Dependencies {
  final AuthRepository authRepository;
  final CartRepository cartRepository;
  final CartProductRepository cartProductRepository;
  final ProductRepository productRepository;
  final CategoryRepository categoryRepository;
  final SearchRepository searchRepository;
  Dependencies({
    required this.authRepository,
    required this.cartRepository,
    required this.cartProductRepository,
    required this.productRepository,
    required this.categoryRepository,
    required this.searchRepository,
  });
}
