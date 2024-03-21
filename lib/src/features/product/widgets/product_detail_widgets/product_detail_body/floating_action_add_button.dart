import 'package:e_shop/src/core/common/constants/app_images.dart';
import 'package:e_shop/src/core/common/constants/app_texts.dart';
import 'package:e_shop/src/features/cart/widgets/cart_scope.dart';
import 'package:e_shop/src/features/product/bloc/product_detail/product_detail_bloc.dart';
import 'package:e_shop/src/core/common/widgets/custom_widgets/modal_bottom_sheet_widget.dart';
import 'package:e_shop/src/features/product/domain/entities/product_entity.dart';
import 'package:e_shop/src/features/product/widgets/product_detail_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FloatingActionAddButton extends StatelessWidget {
  const FloatingActionAddButton({super.key});

  Future<dynamic> _showBottomSheet(
      BuildContext context, ProductEntity product) {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (_) => BlocProvider.value(
        value: context.read<ProductDetailBloc>(),
        child: ModalBottomSheet(
          total: product.stock,
          initialValue: 1,
          onEvent: (int quantity) async {
            ProductDetailScope.of(context).addProductToCart(quantity);
            await Future.delayed(const Duration(seconds: 1));
            if (!context.mounted) return;
            CartScope.of(context).refreshCart();
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailBloc, ProductDetailState>(
      builder: (context, state) => state.maybeWhen(
        loaded: (product) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SizedBox(
            width: double.infinity,
            height: 50.h,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                overlayColor: MaterialStateProperty.all(Colors.grey[600]),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
              ),
              onPressed: () => _showBottomSheet(context, product),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    AppImages.cart,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10.w),
                  const Text(AppTexts.addToCart),
                ],
              ),
            ),
          ),
        ),
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }
}
