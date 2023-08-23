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
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Категория ',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: const Color(0xFF999BA9),
                      ),
                    ),
                    TextSpan(
                      text: '"$category"',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF2F2F2F),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Text(
                '26 результатов',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: const Color(0xFF999BA9),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16.h),
        BlocBuilder<ProductListBloc, ProductListState>(
          builder: (context, state) => state.when(
            initial: () => const _ProductGridViewWidget(products: null),
            loading: () => const _ProductGridViewWidget(products: null),
            loaded: (products) => _ProductGridViewWidget(products: products),
            error: () => const Text('Произошла какая-то ошибка'),
          ),
        )
      ],
    );
  }
}

class _ProductGridViewWidget extends StatelessWidget {
  const _ProductGridViewWidget({
    required this.products,
  });

  final List<ProductEntity>? products;

  @override
  Widget build(BuildContext context) {
    final isLoading = products == null;
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      itemCount: isLoading ? 10 : products!.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 157 / 250,
        crossAxisSpacing: 20.w,
      ),
      itemBuilder: (BuildContext context, int index) {
        if (isLoading) return const ProductItemLoadingWidget();
        return ProductItemWidget(product: products![index]);
      },
    );
  }
}
