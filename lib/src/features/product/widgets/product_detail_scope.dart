import 'package:e_shop/src/core/common/utils/ctx_extensions.dart';
import 'package:e_shop/src/features/app/widgets/dependencies_scope.dart';
import 'package:e_shop/src/features/product/bloc/product_detail/product_detail_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract interface class ProductDetailScopeController {
  void addProductToCart(int quantity);
}

class ProductDetailScope extends StatefulWidget {
  const ProductDetailScope({
    super.key,
    required this.child,
    required this.id,
  });

  final Widget child;
  final int id;

  static ProductDetailScopeController of(BuildContext context) =>
      context.inhOf<_InheritedProductDetailScope>(listen: false).controller;

  @override
  State<ProductDetailScope> createState() => _ProductDetailScopeState();
}

class _ProductDetailScopeState extends State<ProductDetailScope>
    implements ProductDetailScopeController {
  late final ProductDetailBloc bloc;

  @override
  void initState() {
    super.initState();
    final dependencies = DependenciesScope.of(context);
    bloc = ProductDetailBloc(
      dependencies.productRepository,
      dependencies.cartProductRepository,
      dependencies.authRepository,
    )..add(ProductDetailEvent.started(widget.id));
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _InheritedProductDetailScope(
      controller: this,
      child: BlocProvider<ProductDetailBloc>(
        create: (context) => bloc,
        child: widget.child,
      ),
    );
  }

  @override
  void addProductToCart(int quantity) => bloc.add(
        ProductDetailEvent.onPressedCartButton(quantity),
      );
}

final class _InheritedProductDetailScope extends InheritedWidget {
  const _InheritedProductDetailScope({
    required super.child,
    required this.controller,
  });

  final ProductDetailScopeController controller;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) =>
      oldWidget.hashCode != hashCode;
}
