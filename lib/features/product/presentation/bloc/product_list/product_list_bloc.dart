import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:e_shop/common/repositories/product_list_repository.dart';
import 'package:e_shop/common/configuration.dart';
import 'package:e_shop/features/product/domain/entities/product_list_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_list_event.dart';
part 'product_list_state.dart';
part 'product_list_bloc.freezed.dart';

class ProductListBloc extends Bloc<ProductListEvent, ProductListState> {
  ProductListBloc(this._productListRepository) : super(const _Initial()) {
    on<ProductListEvent>(
      (event, emit) async => event.when(
        started: (parameter) async => await _init(
          emit: emit,
          parameter: parameter,
        ),
        onGetProducts: (parameter, page) => _getProducts(
          emit: emit,
          parameter: parameter,
          page: page,
        ),
      ),
      transformer: sequential(),
    );
  }

  final ProductListRepository _productListRepository;

  Future<void> _init({emit, String? parameter}) async {
    emit(const ProductListState.loading());
    await _getProducts(emit: emit, parameter: parameter);
  }

  Future<void> _getProducts({emit, String? parameter, int page = 0}) async {
    late final ProductListEntity newProductList;

    //* The query parameter, which skip old products
    final skip = page * int.parse(ApiConfiguration.limitQueryParameter);

    //* if previous products are ended,
    //* we don't need use new request
    var oldProductsAreEnded = false;

    //* checking if there is still data in api
    if (state is _Loaded) {
      oldProductsAreEnded = (state as _Loaded).areProductsEnded;
    }

    try {
      if (!oldProductsAreEnded) {
        newProductList = await _productListRepository.getProducts(
          skip,
          parameter: parameter ?? '',
        );

        final areProductsEnded = newProductList.products.length <
            int.parse(ApiConfiguration.limitQueryParameter);

        if (state is _Loaded) {
          final oldProducts = (state as _Loaded).productList;
          final productList = newProductList.copyWith(products: [
            ...oldProducts.products,
            ...newProductList.products,
          ]);
          emit(ProductListState.loaded(productList, areProductsEnded));
        } else if (state is _Loading) {
          emit(ProductListState.loaded(newProductList, areProductsEnded));
        }
      }
    } catch (e) {
      print(e);
      emit(const ProductListState.error());
    }
  }
}
