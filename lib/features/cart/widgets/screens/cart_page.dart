import 'package:e_shop/common/constants/app_error_text.dart';
import 'package:e_shop/common/constants/app_texts.dart';
import 'package:e_shop/common/utils/provider/provider_value.dart';
import 'package:e_shop/di/di_container.dart';
import 'package:e_shop/features/cart/domain/entities/cart_entity.dart';
import 'package:e_shop/features/cart/bloc/cart/cart_bloc.dart';
import 'package:e_shop/features/cart/widgets/cart_bottom_sheet_widget.dart';
import 'package:e_shop/features/cart/widgets/shimmer_widgets/cart_page_loading_widget.dart';
import 'package:e_shop/features/cart/widgets/cart_product_actions_widget.dart';
import 'package:e_shop/features/cart/widgets/cart_product_content_widget.dart';
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
            //* Total price 😶
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
                          CartProductContentWidget(product: product),
                          const Spacer(),
                          CartProductActionsWidget(product: product),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 14.h);
                },
              ),
              bottomSheet: CartBottomSheet(total: total),
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
