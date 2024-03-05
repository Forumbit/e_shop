import 'package:e_shop/features/product/domain/entities/product_list_entity.dart';
import 'package:e_shop/common/enum/product_list_enum.dart';
import 'package:e_shop/features/product/bloc/product_list/product_list_bloc.dart';
import 'package:e_shop/features/product/widgets/product_item_widgets/product_item_body_widget.dart';
import 'package:e_shop/features/product/widgets/shimmer_loading_widgets/product_item_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsGridViewWidget extends StatefulWidget {
  const ProductsGridViewWidget({
    super.key,
    required this.productList,
    required this.areProductsEnded,
    required this.productListEnum,
    this.query,
  });

  final ProductListEntity? productList;
  final bool areProductsEnded;
  final String? query;
  final ProductListEnum productListEnum;

  @override
  State<ProductsGridViewWidget> createState() => _ProductsGridViewWidgetState();
}

class _ProductsGridViewWidgetState extends State<ProductsGridViewWidget> {
  late final ScrollController? _scrollController;

  @override
  void initState() {
    super.initState();
    if (widget.areProductsEnded) {
      _scrollController = null;
      return;
    }
    _scrollController = ScrollController();
    _scrollController!.addListener(_onChange);
  }

  @override
  void dispose() {
    if (!widget.areProductsEnded) {
      _scrollController!.removeListener(_onChange);
      _scrollController!.dispose();
    }
    super.dispose();
  }

  void _onChange() {
    if (_scrollController!.position.maxScrollExtent ==
        _scrollController!.offset) {
      final page = (widget.productList?.products.length ?? 0) ~/ 10;
      if (!widget.areProductsEnded) {
        context.read<ProductListBloc>().add(
              ProductListEvent.onGetProducts(
                query: widget.query,
                page: page,
              ),
            );
      } else {}
    }
  }

  @override
  Widget build(BuildContext context) {
    final products = widget.productList?.products;
    final isLoading = products == null;

    // bottom shimmer
    final isLoadingCount = widget.areProductsEnded ? 0 : 2;
    return GridView.builder(
      controller: _scrollController,
      physics: isLoading ? const NeverScrollableScrollPhysics() : null,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
      itemCount: isLoading ? 10 : products.length + isLoadingCount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 157 / 250,
        crossAxisSpacing: 20.w,
      ),
      itemBuilder: (BuildContext context, int index) {
        if (isLoading) return const ProductItemLoadingWidget();
        if (index < products.length) {
          return ProductItemWidget(product: products[index]);
        } else {
          return const ProductItemLoadingWidget();
        }
      },
    );
  }
}
