import 'package:e_shop/common/constants/app_error_text.dart';
import 'package:e_shop/features/product/presentation/widgets/product_list_widgets/products_grid_view_widget.dart';
import 'package:e_shop/features/common/widgets/shimmer/shimmer.dart';
import 'package:e_shop/features/product/domain/entities/product_list_entity.dart';
import 'package:e_shop/features/common/enum/product_list_enum.dart';
import 'package:e_shop/features/product/presentation/bloc/product_list/product_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductListWidget extends StatelessWidget {
  const ProductListWidget({
    super.key,
    required this.controller,
    required this.productListEnum,
  });
  final TextEditingController controller;
  final ProductListEnum productListEnum;

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      child: BlocBuilder<ProductListBloc, ProductListState>(
        builder: (context, state) => state.maybeWhen(
          orElse: () => ProductsGridViewWidget(
            productList: null,
            areProductsEnded: false,
            productListEnum: productListEnum,
          ),
          loaded: (
            ProductListEntity productList,
            bool areProductsEnded,
          ) {
            return ProductsGridViewWidget(
              productList: productList,
              areProductsEnded: areProductsEnded,
              productListEnum: productListEnum,
              query: controller.text,
            );
          },
          error: () => const Text(AppErrorText.commonError,),
        ),
      ),
    );
  }
}
