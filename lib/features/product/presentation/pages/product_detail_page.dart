import 'package:e_shop/common/constants/app_colors.dart';
import 'package:e_shop/features/product/bloc/product_detail/product_detail_bloc.dart';
import 'package:e_shop/features/product/domain/entities/product_entity.dart';
import 'package:e_shop/features/product/presentation/widgets/loading_widgets/product_detail_loading_widget.dart';
import 'package:e_shop/features/product/presentation/widgets/product_detail_widgets/carousel_product_widget.dart';
import 'package:e_shop/features/product/presentation/widgets/product_detail_widgets/characters_widget.dart';
import 'package:e_shop/features/product/presentation/widgets/product_detail_widgets/floating_action_add_button.dart';
import 'package:e_shop/features/product/presentation/widgets/product_detail_widgets/name_and_price_widget.dart';
import 'package:e_shop/features/product/presentation/widgets/product_detail_widgets/rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: Colors.black45,
        title: BlocBuilder<ProductDetailBloc, ProductDetailState>(
          builder: (context, state) {
            return state.maybeWhen(
              loaded: (product) => Text(
                product.title,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              orElse: () => const Text('Загрузка'),
            );
          },
        ),
        centerTitle: true,
        shadowColor: Colors.black,
      ),
      body: BlocBuilder<ProductDetailBloc, ProductDetailState>(
        builder: (context, state) => state.when(
          initial: () => const ProductDetailLoadingWidget(),
          loading: () => const ProductDetailLoadingWidget(),
          loaded: (ProductEntity product) => ListView(
            padding: const EdgeInsets.only(top: 0),
            children: [
              CarouselProductWidget(product: product),
              SizedBox(height: 20.h),
              NameAndPriceWidget(product: product),
              SizedBox(height: 4.h),
              RatingWidget(product: product),
              SizedBox(height: 16.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  product.description,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: const Color(0xFF2F2F2F),
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              CharactersWidget(product: product),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  width: double.infinity,
                  height: 200.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: AppColors.defaultColor,
                  ),
                  child: const Center(child: Text('Отзывов пока нет')),
                ),
              ),
              SizedBox(height: 50.h),
            ],
          ),
          error: () => const Center(child: Text('Что-то пошло не так')),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const FloatingActionAddButton(),
    );
  }
}
