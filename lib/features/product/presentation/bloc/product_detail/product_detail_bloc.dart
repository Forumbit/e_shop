import 'dart:developer';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:e_shop/features/auth/domain/repository/auth_repository.dart';
import 'package:e_shop/features/cart/data/mapper/cart_product_mapper.dart';
import 'package:e_shop/features/cart/domain/repository/cart_product_repository.dart';
import 'package:e_shop/features/product/domain/repository/product_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_shop/features/product/domain/entities/product_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_detail_event.dart';
part 'product_detail_state.dart';
part 'product_detail_bloc.freezed.dart';

class ProductDetailBloc extends Bloc<ProductDetailEvent, ProductDetailState> {
  ProductDetailBloc(
    this._productRepository,
    this._cartRepository,
    this._authRepository,
  ) : super(const _Initial()) {
    on<ProductDetailEvent>(
      (event, emit) async => event.when(
        started: (int id) async => await _init(emit, id),
        onPressedCartButton: (quantity) async => await _addProductToCart(emit, quantity),
      ),
      transformer: sequential(),
    );
  }

  final ProductRepository _productRepository;
  final CartProductRepository _cartRepository;
  final AuthRepository _authRepository;

  Future<void> _init(emit, id) async {
    await _getProduct(emit, id);
  }

  Future<void> _getProduct(emit, int id) async {
    try {
      emit(const ProductDetailState.loading());
      final product = await _productRepository.getProduct(id);
      emit(ProductDetailState.loaded(product));
    } catch (e) {
      log(e.toString());
      emit(const ProductDetailState.error());
    }
  }

  Future<void> _addProductToCart(emit, int quantity) async {
    try {
      final user = _authRepository.getUser();
      final product = (state as _Loaded).product;
      final cartProduct = CartProductMapper.fromProductEntity(product).copyWith(
        quantity: quantity,
        total: product.price * quantity
      );
      await _cartRepository.addProductCart(user!.uid, cartProduct);
    } catch (e) {
      log(e.toString());
      emit(const ProductDetailState.error());
    }
  }
}
