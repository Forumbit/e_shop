import 'package:e_shop/src/core/common/enum/product_list_enum.dart';
import 'package:e_shop/src/core/common/repository/product_list_repository.dart';
import 'package:e_shop/src/features/app/model/dependencies.dart';
import 'package:e_shop/src/features/app/widgets/dependencies_scope.dart';
import 'package:e_shop/src/features/product/bloc/product_list/product_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductListScope extends StatefulWidget {
  const ProductListScope({
    super.key,
    required this.child,
    required this.parameter,
    required this.productListEnum,
  });

  final Widget child;
  final String? parameter;
  final ProductListEnum productListEnum;

  @override
  State<ProductListScope> createState() => _ProductListScopeState();
}

class _ProductListScopeState extends State<ProductListScope> {
  late final ProductListBloc bloc;

  @override
  void initState() {
    super.initState();
    final dependencies = DependenciesScope.of(context);
    bloc = ProductListBloc(getProductListRepository(dependencies))
      ..add(ProductListEvent.started(parameter: widget.parameter));
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  ProductListRepository getProductListRepository(Dependencies dependencies) {
    return switch (widget.productListEnum) {
      ProductListEnum.popular => dependencies.productRepository,
      ProductListEnum.category => dependencies.categoryRepository,
      ProductListEnum.search => dependencies.searchRepository,
    };
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductListBloc>(
      create: (context) => bloc,
      child: widget.child,
    );
  }
}
