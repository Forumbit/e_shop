import 'package:e_shop/src/features/app/widgets/dependencies_scope.dart';
import 'package:e_shop/src/features/product/bloc/product_detail/product_detail_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailScope extends StatefulWidget {
  const ProductDetailScope({
    super.key,
    required this.child,
    required this.id,
  });

  final Widget child;
  final int id;

  @override
  State<ProductDetailScope> createState() => _ProductDetailScopeState();
}

class _ProductDetailScopeState extends State<ProductDetailScope> {
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
    return BlocProvider<ProductDetailBloc>(
      create: (context) => bloc,
      child: widget.child,
    );
  }
}
