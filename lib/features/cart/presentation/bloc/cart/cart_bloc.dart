import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:e_shop/features/auth/domain/repository/auth_repository.dart';
import 'package:e_shop/features/cart/domain/entities/cart_entity.dart';
import 'package:e_shop/features/cart/domain/entities/cart_product_entity.dart';
import 'package:e_shop/features/cart/domain/repository/cart_product_repository.dart';
import 'package:e_shop/features/cart/domain/repository/cart_repository.dart';
import 'package:e_shop/features/user/domain/entities/user_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc({
    required this.cartRepository,
    required this.authRepository,
    required this.cartProductRepository,
  }) : super(const _Initial()) {
    on<CartEvent>(
      (event, emit) async => event.when(
        started: () => _init(emit),
        onRefreshCart: () => _refreshCart(emit),
        onProductUpdated: (CartProductEntity product) =>
            _onProductUpdated(emit, product),
        onProductDeleted: (String productId) =>
            _onProductDeleted(emit, productId),
      ),
      transformer: droppable(),
    );
  }

  final CartRepository cartRepository;
  final AuthRepository authRepository;
  final CartProductRepository cartProductRepository;

  Future<void> _init(emit) async {
    try {
      emit(const CartState.loading());
      final user = _getUser(emit);
      await _getCart(user.uid, emit);
    } catch (e) {
      emit(const CartState.error());
      rethrow;
    }
  }

  Future<void> _refreshCart(emit) async {
    try {
      emit(const CartState.loading());
      final user = _getUser(emit);
      await _getCart(user.uid, emit);
    } catch (e) {
      emit(const CartState.error());
      rethrow;
    }
  }

  UserEntity _getUser(emit) {
    try {
      return authRepository.getUser()!;
    } catch (e) {
      emit(const CartState.error());
      rethrow;
    }
  }

  Future<void> _getCart(String uid, emit) async {
    try {
      final cart = await cartRepository.getCart(uid);
      print(cart);
      emit(CartState.loaded(cart!));
    } catch (e) {
      emit(const CartState.error());
      rethrow;
    }
  }

  Future<void> _updateCart(emit) async {
    try {
      final user = authRepository.getUser();
      await _getCart(user!.uid, emit);
    } catch (e) {
      emit(const CartState.error());
      rethrow;
    }
  }

  Future<void> _onProductUpdated(emit, CartProductEntity product) async {
    try {
      final cartId = (state as _Loaded).cart.docId!;
      await cartProductRepository.updateProductCart(cartId, product);
      await _updateCart(emit);
    } catch (e) {
      emit(const CartState.error());
      rethrow;
    }
  }

  Future<void> _onProductDeleted(emit, String productId) async {
    try {
      final cartId = (state as _Loaded).cart.docId!;
      await cartProductRepository.deleteProductCart(cartId, productId);
      await _updateCart(emit);
    } catch (e) {
      emit(const CartState.error());
      rethrow;
    }
  }
}
