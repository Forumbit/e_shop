part of 'product_list_bloc.dart';

@freezed
class ProductListEvent with _$ProductListEvent {
  const factory ProductListEvent.started() = _Started;
  const factory ProductListEvent.onGetPopularProducts(
      ProductListEntity? products) = _OnGetPopularProducts;
}
