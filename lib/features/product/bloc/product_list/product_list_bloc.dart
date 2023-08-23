import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:e_shop/features/product/domain/entities/product_entity.dart';
import 'package:e_shop/features/product/domain/repository/product_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_list_event.dart';
part 'product_list_state.dart';
part 'product_list_bloc.freezed.dart';

class ProductListBloc extends Bloc<ProductListEvent, ProductListState> {
  ProductListBloc(this._productRepository) : super(const _Initial()) {
    on<ProductListEvent>(
      (event, emit) async => event.when(
        started: () async => await _init(event, emit),
        onGetPopularProducts: () => _getPopularProducts(event, emit),
        onGetCategoryProducts: () => _getCategoryProducts(event, emit),
        onGetSearchProducts: () => _getSearchProducts(event, emit),
        // onGetProduct: () => _getProduct(event, emit),
      ),
      transformer: concurrent(),
    );
  }

  final ProductRepository _productRepository;

  Future<void> _init(event, emit) async {
    await _getPopularProducts(event, emit);
  }

  Future<void> _getPopularProducts(event, emit) async {
    emit(const ProductListState.loading());
    final products = await _productRepository.getPopularProducts();
    emit(ProductListState.loaded(products));
  }

  Future<void> _getCategoryProducts(event, emit) async {
    emit();
  }

  Future<void> _getSearchProducts(event, emit) async {
    emit();
  }

  Future<void> _getProduct(event, emit) async {
    emit();
  }
}
