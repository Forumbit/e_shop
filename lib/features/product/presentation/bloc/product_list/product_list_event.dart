part of 'product_list_bloc.dart';

@freezed
class ProductListEvent with _$ProductListEvent {
  const factory ProductListEvent.started({
    @Default(null) String? parameter,
  }) = _Started;
  const factory ProductListEvent.onGetProducts({
    @Default(null) String? query,
    @Default(0) int page,
  }) = _OnGetProducts;
  const factory ProductListEvent.onSearchProducts(
    String query,
  ) = _OnSearchProducts;
}
