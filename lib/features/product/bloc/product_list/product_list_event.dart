part of 'product_list_bloc.dart';

@freezed
class ProductListEvent with _$ProductListEvent {
  const factory ProductListEvent.started() = _Started;
  const factory ProductListEvent.onGetPopularProducts() = _OnGetPopularProducts;
  const factory ProductListEvent.onGetCategoryProducts() = _OnGetCategoryProducts;
  const factory ProductListEvent.onGetSearchProducts() = _OnGetSearchProducts;
  // const factory ProductListEvent.onGetProduct() = _OnGetProduct;
}