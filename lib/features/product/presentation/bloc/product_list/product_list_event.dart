part of 'product_list_bloc.dart';

@freezed
class ProductListEvent with _$ProductListEvent {
  const factory ProductListEvent.started({
    required ProductListEnum productListEnum,
    required String? parameter,
  }) = _Started;
  const factory ProductListEvent.onGetProducts({
    @Default(ProductListEnum.popular) ProductListEnum productListEnum,
    @Default(null) String? query,
    @Default(0) int page,
  }) = _OnGetProducts;
}
