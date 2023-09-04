import 'package:e_shop/features/auth/domain/repository/auth_repository.dart';
import 'package:e_shop/features/cart/domain/entities/cart_entity.dart';
import 'package:e_shop/features/cart/domain/repository/cart_repository.dart';
import 'package:e_shop/features/user/domain/entities/user_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loader_event.dart';
part 'loader_state.dart';
part 'loader_bloc.freezed.dart';

class LoaderBloc extends Bloc<LoaderEvent, LoaderState> {
  LoaderBloc({
    required this.authRepository,
    required this.cartRepository,
  }) : super(const _Initial()) {
    on<LoaderEvent>(
      (event, emit) => event.when(
        started: () => _init(emit),
      ),
    );
  }

  final AuthRepository authRepository;
  final CartRepository cartRepository;

  Future<void> _init(emit) async {
    try {
      final UserEntity? user = authRepository.getUser();
      if (user == null) return emit(const LoaderState.isLogged(false));
      if (!user.emailVerified) {
        emit(const LoaderState.noVerifiedEmail());
        return;
      }

      final cart = await cartRepository.getCart(user.uid);
      if (cart == null) {
        final cartEntity = CartEntity(
          docId: null,
          uid: user.uid,
          products: [],
        );
        await cartRepository.createCart(cartEntity);
      }

      emit(const LoaderState.isLogged(true));
    } catch (e) {
      rethrow;
    }
  }
}
