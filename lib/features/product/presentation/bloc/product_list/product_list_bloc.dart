import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:e_shop/common/product_list_repository/product_list_repository.dart';
import 'package:e_shop/config/configuration.dart';
import 'package:e_shop/features/product/domain/entities/product_list_entity.dart';
import 'package:e_shop/features/product/domain/enum/product_list_enum.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_list_event.dart';
part 'product_list_state.dart';
part 'product_list_bloc.freezed.dart';

class ProductListBloc extends Bloc<ProductListEvent, ProductListState> {
  ProductListBloc(this._productListRepository) : super(const _Initial()) {
    on<ProductListEvent>(
      (event, emit) async => event.when(
        started: (productListEnum, parameter) async => await _init(
          emit: emit,
          productListEnum: productListEnum,
          parameter: parameter,
        ),
        onGetProducts: (productListEnum, parameter, page) => _getProducts(
          emit: emit,
          productListEnum: productListEnum,
          parameter: parameter,
          page: page,
        ),
      ),
      transformer: sequential(),
    );
  }

  final ProductListRepository _productListRepository;

  Future<void> _init({
    emit,
    ProductListEnum productListEnum = ProductListEnum.popular,
    String? parameter,
  }) async {
    emit(const ProductListState.loading());
    await _getProducts(
      emit: emit,
      productListEnum: productListEnum,
      parameter: parameter,
    );
  }

  Future<void> _getProducts({
    emit,
    ProductListEnum productListEnum = ProductListEnum.popular,
    String? parameter,
    int page = 0,
  }) async {
    late final ProductListEntity newProductList;

    //* The query parameter, which skip old products
    final skip = page * int.parse(ApiConfiguration.limitQueryParameter);

    //* if previous products are ended,
    //* we don't need use new request
    var oldProductsAreEnded = false;

    if (state is _Loaded) {
      oldProductsAreEnded = (state as _Loaded).areProductsEnded;
    }

    if (!oldProductsAreEnded) {
      switch (productListEnum) {
        case ProductListEnum.popular:
          newProductList = await _productListRepository.getProducts(skip);
          break;
        case ProductListEnum.category:
          newProductList = await _productListRepository.getProducts(
            skip,
            parameter: parameter ?? '',
          );
          break;
        case ProductListEnum.search:
          //! Change
          newProductList = await _productListRepository.getProducts(skip);
          break;
      }

      final areProductsEnded = newProductList.products.length <
          int.parse(ApiConfiguration.limitQueryParameter);

      if (state is _Loaded) {
        final oldProducts = (state as _Loaded).productList;
        final allProducts = [
          ...oldProducts.products,
          ...newProductList.products,
        ];
        final productList = newProductList.copyWith(products: allProducts);
        emit(ProductListState.loaded(productList, areProductsEnded));
        return;
      }

      emit(ProductListState.loaded(newProductList, areProductsEnded));
    }
  }
}
