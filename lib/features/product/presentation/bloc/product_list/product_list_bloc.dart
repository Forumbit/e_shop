import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:e_shop/common/product_list_repository/product_list_repository.dart';
import 'package:e_shop/config/configuration.dart';
import 'package:e_shop/features/category/domain/repository/category_repository.dart';
import 'package:e_shop/features/product/domain/entities/product_list_entity.dart';
import 'package:e_shop/features/product/domain/enum/product_list_enum.dart';
import 'package:e_shop/features/product/domain/repository/product_repository.dart';
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
          emit,
          productListEnum,
          parameter,
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

  Future<void> _init(
    emit,
    ProductListEnum productListEnum,
    String? parameter,
  ) async {
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
    final _skip = page * 10;

    late final ProductListEntity _newProductList;
    var _productsAreEnded = false;

    if (state is _Loaded) {
      _productsAreEnded = (state as _Loaded).productList.products.length <
          int.parse(ApiConfiguration.limitQueryParameter);
    }

    if (!_productsAreEnded) {
      switch (productListEnum) {
        case ProductListEnum.popular:
          final productRepository = _productListRepository as ProductRepository;
          _newProductList = await productRepository.getProducts(_skip);
          break;
        case ProductListEnum.category:
          final categoryRepository =
              _productListRepository as CategoryRepository;
          _newProductList = await categoryRepository.getProducts(
            _skip,
            parameter: parameter ?? '',
          );
          break;
        case ProductListEnum.search:
          //! Change
          final productRepository = _productListRepository as ProductRepository;
          _newProductList = await productRepository.getProducts(_skip);
          break;
      }

      final areProductsEnded = _newProductList.products.length <
          int.parse(ApiConfiguration.limitQueryParameter);

      if (state is _Loaded) {
        final oldProducts = (state as _Loaded).productList;

        final allProducts = [
          ...oldProducts.products,
          ..._newProductList.products
        ];
        final productList = _newProductList.copyWith(products: allProducts);
        emit(ProductListState.loaded(productList, areProductsEnded));
        return;
      }

      emit(ProductListState.loaded(_newProductList, areProductsEnded));
    }
  }
}
