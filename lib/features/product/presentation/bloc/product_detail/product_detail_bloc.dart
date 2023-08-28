import 'dart:developer';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:e_shop/features/product/domain/repository/product_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_shop/features/product/domain/entities/product_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_detail_event.dart';
part 'product_detail_state.dart';
part 'product_detail_bloc.freezed.dart';

class ProductDetailBloc extends Bloc<ProductDetailEvent, ProductDetailState> {
  ProductDetailBloc(this._productRepository) : super(const _Initial()) {
    on<ProductDetailEvent>(
      (event, emit) async => event.when(
        started: (int id) async => await _init(emit, id),
      ),
      transformer: sequential(),
    );
  }

  final ProductRepository _productRepository;

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
}
