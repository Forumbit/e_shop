import 'package:e_shop/src/core/common/constants/app_error_text.dart';
import 'package:e_shop/src/core/common/constants/app_texts.dart';
import 'package:e_shop/src/features/product/domain/entities/product_entity.dart';
import 'package:e_shop/src/features/product/bloc/product_detail/product_detail_bloc.dart';
import 'package:e_shop/src/features/product/widgets/product_detail_widgets/product_detail_widget.dart';
import 'package:e_shop/src/features/product/widgets/product_detail_widgets/product_detail_body/floating_action_add_button.dart';
import 'package:e_shop/src/features/product/widgets/shimmer_loading_widgets/product_detail_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({
    super.key,
    required this.id,
  });

  final int id;

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  var isVisible = true;

  void _toggleFAButtonVisibility(UserScrollNotification notification) {
    if (notification.depth == 0) {
      if (notification.direction == ScrollDirection.forward) {
        if (!isVisible) setState(() => isVisible = true);
      } else if (notification.direction == ScrollDirection.reverse) {
        if (isVisible) setState(() => isVisible = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<UserScrollNotification>(
      onNotification: (notification) {
        _toggleFAButtonVisibility(notification);
        return true;
      },
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          scrolledUnderElevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: Colors.black45,
          title: _AppBarTitle(),
          centerTitle: true,
          shadowColor: Colors.black,
        ),
        body: BlocBuilder<ProductDetailBloc, ProductDetailState>(
          builder: (context, state) => state.when(
            initial: () => const ProductDetailLoadingWidget(),
            loading: () => const ProductDetailLoadingWidget(),
            loaded: (ProductEntity product) =>
                ProductDetailWidget(product: product),
            error: () => const Center(
                child: Text(
              AppErrorText.commonError,
            )),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: AnimatedSlide(
          duration: const Duration(milliseconds: 300),
          offset: isVisible ? Offset.zero : const Offset(0, 2),
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 300),
            opacity: isVisible ? 1 : 0,
            child: const FloatingActionAddButton(),
          ),
        ),
      ),
    );
  }
}

class _AppBarTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailBloc, ProductDetailState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (product) => Text(
            product.title,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          orElse: () => const Text(AppTexts.loading),
        );
      },
    );
  }
}
