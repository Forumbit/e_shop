part of 'product_detail_bloc.dart';

@freezed
class ProductDetailEvent with _$ProductDetailEvent {
  const factory ProductDetailEvent.started(int id) = _Started;
  const factory ProductDetailEvent.onPressedCartButton(int quantity) = _OnPressedCartButton;
}
