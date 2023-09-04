part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.started() = _Started;
  const factory CartEvent.onRefreshCart() = _OnRefreshCart;
  const factory CartEvent.onProductUpdated(
    CartProductEntity product,
  ) = _OnProductUpdated;
  const factory CartEvent.onProductDeleted(String productId) = _OnProductDeleted;
}
