import 'package:e_shop/common/constants/app_colors.dart';
import 'package:e_shop/common/constants/app_error_text.dart';
import 'package:e_shop/common/constants/app_texts.dart';
import 'package:e_shop/common/utils/provider/provider_value.dart';
import 'package:e_shop/common/utils/snack_bar_message.dart';
import 'package:e_shop/di/di_container.dart';

import 'package:e_shop/features/cart/domain/entities/cart_entity.dart';
import 'package:e_shop/features/cart/presentation/bloc/cart/cart_bloc.dart';
import 'package:e_shop/features/cart/presentation/widgets/cart_page_loading_widget.dart';
import 'package:e_shop/widgets/custom_widgets/custom_elevated_button.dart';
import 'package:e_shop/widgets/custom_widgets/modal_bottom_sheet_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final diContainer = ProviderValue.of<DIContainer>(context);
    return BlocProvider(
      create: (context) => CartBloc(
        cartRepository: diContainer.getCartRepository(),
        authRepository: diContainer.getAuthRepository(),
        cartProductRepository: diContainer.getCartProductRepository(),
      )..add(const CartEvent.started()),
      child: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) => state.when(
          initial: () => const CartPageLoadingWidget(),
          loading: () => const CartPageLoadingWidget(),
          loaded: (CartEntity cart) {
            final total = (cart.products != null && cart.products!.isNotEmpty)
                ? cart.products!.map((e) => e.total).reduce(
                      (value, element) => value + element,
                    )
                : null;

            return Scaffold(
              appBar: AppBar(
                scrolledUnderElevation: 0,
                title: const Text(AppTexts.cart),
                centerTitle: true,
                actions: [
                  IconButton(
                    onPressed: () => context.read<CartBloc>().add(
                          const CartEvent.onRefreshCart(),
                        ),
                    icon: const Icon(Icons.refresh),
                  )
                ],
              ),
              body: ListView.separated(
                padding: EdgeInsets.only(bottom: 120.h),
                itemCount: cart.products?.length ?? 0,
                itemBuilder: (BuildContext context, int index) {
                  final product = cart.products![index];
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: SizedBox(
                      height: 120.h,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 120.w,
                            height: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.r),
                              child: Image.network(
                                product.thumbnail,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 20.h),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5.h),
                              SizedBox(
                                width: 80.w,
                                child: Text(
                                  product.title,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                  ),
                                  maxLines: 1,
                                ),
                              ),
                              const Spacer(),
                              Text('\$${product.price.toString()}'),
                              Text('Quantity: ${product.quantity.toString()}'),
                              Text('Total: \$${product.total}'),
                              SizedBox(height: 8.h),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              IconButton(
                                onPressed: () => context.read<CartBloc>().add(
                                      CartEvent.onProductDeleted(
                                        product.docId!,
                                      ),
                                    ),
                                icon: const Icon(Icons.clear),
                              ),
                              IconButton(
                                highlightColor: Colors.black,
                                onPressed: () => showModalBottomSheet(
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (_) => ModalBottomSheet(
                                    total: product.stock,
                                    onEvent: (int value) {
                                      final cartProduct = product.copyWith(
                                        quantity: value,
                                        total: value * product.price,
                                      );
                                      context.read<CartBloc>().add(
                                            CartEvent.onProductUpdated(
                                              cartProduct,
                                            ),
                                          );
                                    },
                                    initialValue: product.quantity,
                                  ),
                                ),
                                icon: const Icon(Icons.edit),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 14.h);
                },
              ),
              bottomSheet: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 10.h),
                      Text(
                        total != null ? 'Total: \$$total' : 'Total: ???',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      SizedBox(
                        height: 54.h,
                        width: double.infinity,
                        child: CustomElevatedButton(
                          backgroundColor: AppColors.mainColor,
                          onPressed: () => SnackBarMessenger.showSnackBar(
                            context,
                            'Transaction was succesffully completed',
                            false,
                          ),
                          child: const Text(
                            'Checkout',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                    ],
                  ),
                ),
              ),
            );
          },
          error: () => const Scaffold(
            body: Center(
              child: Text(AppErrorText.commonError),
            ),
          ),
        ),
      ),
    );
  }
}
