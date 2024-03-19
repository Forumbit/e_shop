import 'package:e_shop/src/features/app/model/dependencies.dart';
import 'package:e_shop/src/features/app/widgets/dependencies_scope.dart';
import 'package:e_shop/src/features/cart/bloc/cart/cart_bloc.dart';
import 'package:e_shop/src/features/cart/domain/entities/cart_product_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract interface class CartScopeController {
  void editProduct(int value, CartProductEntity product);
  void refreshCart();
}

class CartScope extends StatefulWidget {
  const CartScope({super.key, required this.child});

  final Widget child;

  static CartScopeController of(BuildContext context) => (context
          .getElementForInheritedWidgetOfExactType<_InheritedCartScope>()!
          .widget as _InheritedCartScope)
      .controller;

  @override
  State<CartScope> createState() => _CartScopeState();
}

class _CartScopeState extends State<CartScope> implements CartScopeController {
  late final Dependencies dependencies;
  late final CartBloc bloc;

  @override
  void initState() {
    super.initState();
    dependencies = DependenciesScope.of(context);
    bloc = CartBloc(
      cartRepository: dependencies.cartRepository,
      authRepository: dependencies.authRepository,
      cartProductRepository: dependencies.cartProductRepository,
    );
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  void refreshCart() => bloc.add(const CartEvent.onRefreshCart());

  @override
  void editProduct(
    int value,
    CartProductEntity product,
  ) {
    final cartProduct = product.copyWith(
      quantity: value,
      total: value * product.price,
    );
    bloc.add(CartEvent.onProductUpdated(cartProduct));
  }

  @override
  Widget build(BuildContext context) {
    return _InheritedCartScope(
      controller: this,
      child: BlocProvider(
        create: (context) => bloc..add(const CartEvent.started()),
        child: widget.child,
      ),
    );
  }
}

final class _InheritedCartScope extends InheritedWidget {
  const _InheritedCartScope({
    required super.child,
    required this.controller,
  });

  final CartScopeController controller;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return oldWidget.hashCode != hashCode;
  }
}
