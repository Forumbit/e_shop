import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:e_shop/common/constants/app_remote_constants.dart';
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
    // skip api parameter
    final page = oldProductList != null ? oldProductList.products.length : 0;
    final productList = await _productRepository.getPopularProducts(page);

    // if number of products < limit, then products are ended
    final areProductsEnded =
        productList.products.length < DummyJsonApiConstants.limitParameter;

    if (oldProductList != null) {
      final allProducts = [...oldProductList.products, ...productList.products];
      final newProductList = productList.copyWith(products: allProducts);

      emit(
          ProductListState.newProductsLoaded(newProductList, areProductsEnded));
    } else {
      emit(ProductListState.loaded(productList, areProductsEnded));
    }
  }
}
