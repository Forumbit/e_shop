import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:e_shop/features/product/domain/entities/product_list_entity.dart';
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
        onGetPopularProducts: (products) => _getPopularProducts(emit, products),
      ),
      transformer: sequential(),
    );
  }

  final ProductRepository _productRepository;

  Future<void> _init(emit) async {
    emit(const ProductListState.loading());
    await _getPopularProducts(emit, null);
  }

  Future<void> _getPopularProducts(
    emit,
    ProductListEntity? oldProductList,
  ) async {
    final page = oldProductList != null ? oldProductList.products.length : 0;

    //! Not right variable, replace
    final limit = 10;

    final productList = await _productRepository.getPopularProducts(page);
    final isProductsEnded = productList.products.length < limit;

    if (oldProductList != null) {
      final allProducts = [...oldProductList.products, ...productList.products];
      final allProductList = productList.copyWith(products: allProducts);
      emit(ProductListState.newProductsLoaded(allProductList, isProductsEnded));
    } else {
      emit(ProductListState.loaded(productList, isProductsEnded));
    }
  }
}
