import 'package:e_shop/common/widgets/shimmer/shimmer.dart';
import 'package:e_shop/features/product/bloc/product_list/product_list_bloc.dart';
import 'package:e_shop/features/product/domain/entities/product_entity.dart';
import 'package:e_shop/features/product/presentation/widgets/loading_widgets/product_item_loading_widget.dart';
import 'package:e_shop/features/product/presentation/widgets/product_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductListWidget extends StatelessWidget {
  const ProductListWidget({
    super.key,
    required this.category,
  });
  final String category;

  @override
  Widget build(BuildContext context) {
    return Shimmer(
        child: BlocBuilder<ProductListBloc, ProductListState>(
      builder: (context, state) => state.when(
        //! Is is maybe Wrong!
        initial: () => const _ProductGridViewWidget(
          products: null,
          isProductsEnded: false,
        ),
        loading: () => const _ProductGridViewWidget(
          products: null,
          isProductsEnded: false,
        ),
        //! It is maybe wrong!
        loaded: (products, isProductsEnded) => _ProductGridViewWidget(
            products: products, isProductsEnded: isProductsEnded),

        newProductsLoaded: (List<ProductEntity> products, isProductsEnded) =>
            _ProductGridViewWidget(
                products: products, isProductsEnded: isProductsEnded),
        error: () => const Text('Произошла какая-то ошибка'),
      ),
    ));
  }
}

class _ProductGridViewWidget extends StatefulWidget {
  const _ProductGridViewWidget({
    required this.products,
    required this.isProductsEnded,
  });

  final List<ProductEntity>? products;
  final bool isProductsEnded;

  @override
  State<_ProductGridViewWidget> createState() => _ProductGridViewWidgetState();
}

class _ProductGridViewWidgetState extends State<_ProductGridViewWidget> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    print(widget.isProductsEnded);
    if (widget.isProductsEnded) return;
    _scrollController.addListener(_onChange);
  }

  @override
  void dispose() {
    if (!widget.isProductsEnded) {
      _scrollController.removeListener(_onChange);
    }
    _scrollController.dispose();
    super.dispose();
  }

  void _onChange() {
    if (_scrollController.position.maxScrollExtent ==
        _scrollController.offset) {
      context
          .read<ProductListBloc>()
          .add(ProductListEvent.onGetPopularProducts(widget.products));
    }
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = widget.products == null;

    //! Change Variable name
    final loadCount = widget.isProductsEnded ? 0 : 4;

    return GridView.builder(
      controller: _scrollController,
      physics: isLoading ? const NeverScrollableScrollPhysics() : null,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      itemCount: isLoading ? 10 : widget.products!.length + loadCount,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 157 / 250,
        crossAxisSpacing: 20.w,
      ),
      itemBuilder: (BuildContext context, int index) {
        if (isLoading) return const ProductItemLoadingWidget();
        if (index < widget.products!.length) {
          return ProductItemWidget(product: widget.products![index]);
        } else {
          return const ProductItemLoadingWidget();
        }
      },
    );
  }
}
