part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = _Initial;
  const factory CartState.loading() = _Loading;
  const factory CartState.loaded(CartEntity cart) = _Loaded;
  const factory CartState.error() = _Error;
}
