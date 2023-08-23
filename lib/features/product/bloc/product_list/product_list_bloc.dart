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
        started: () async => await _init(emit),
        onGetPopularProducts: () => _getPopularProducts(emit),
      ),
      transformer: concurrent(),
    );
  }

  final ProductRepository _productRepository;
  var _page = 0;
  var _products = <ProductEntity>[];

  Future<void> _init(emit) async {
    await _getPopularProducts(emit);
  }

  Future<void> _getPopularProducts(emit) async {
    emit(const ProductListState.loading());
    final products = await _productRepository.getPopularProducts(_page * 10);
    _page++;
    _products.addAll(products);
    emit(ProductListState.loaded(_products));
  }
}
