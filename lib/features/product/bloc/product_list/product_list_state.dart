part of 'product_list_bloc.dart';

@freezed
class ProductListState with _$ProductListState {
  const factory ProductListState.initial() = _Initial;
  const factory ProductListState.loading() = _Loading;
  const factory ProductListState.loaded(List<ProductEntity> products, bool isProductsEnded) = _Loaded;
  const factory ProductListState.newProductsLoaded(List<ProductEntity> products, bool isProductsEnded) = _NewProductsLoaded;
  const factory ProductListState.error() = _Error;
}
