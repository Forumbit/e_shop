import 'package:e_shop/src/features/app/widgets/dependencies_scope.dart';
import 'package:e_shop/src/features/category/bloc/category_list/category_list_bloc.dart';
import 'package:e_shop/src/features/product/bloc/product_list/product_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryListScope extends StatefulWidget {
  const CategoryListScope({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<CategoryListScope> createState() => _CategoryListScopeState();
}

class _CategoryListScopeState extends State<CategoryListScope> {
  late final CategoryListBloc categoryListBloc;
  late final ProductListBloc productListBloc;

  @override
  void initState() {
    super.initState();
    final dependencies = DependenciesScope.of(context);
    categoryListBloc = CategoryListBloc(
      dependencies.categoryRepository,
    )..add(const CategoryListEvent.started());
    productListBloc = ProductListBloc(
      dependencies.productRepository,
    )..add(const ProductListEvent.started());
  }

  @override
  void dispose() {
    categoryListBloc.close();
    productListBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CategoryListBloc>(
          create: (context) => categoryListBloc,
        ),
        BlocProvider<ProductListBloc>(
          create: (context) => productListBloc,
        ),
      ],
      child: widget.child,
    );
  }
}
