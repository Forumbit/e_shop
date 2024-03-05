import 'package:e_shop/core/common/constants/app_colors.dart';
import 'package:e_shop/features/product/widgets/product_detail_widgets/product_detail_body/detail_image_widget.dart';
import 'package:e_shop/core/common/widgets/shimmer/shimmer_loading.dart';
import 'package:e_shop/features/product/domain/entities/product_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselProductWidget extends StatelessWidget {
  const CarouselProductWidget({
    super.key,
    required this.product,
  });

  final ProductEntity? product;

  @override
  Widget build(BuildContext context) {
    return ShimmerLoading(
      isLoading: product == null,
      child: SizedBox(
        height: 330.w,
        child: PageViewWidget(
          product: product,
        ),
      ),
    );
  }
}

class PageViewWidget extends StatefulWidget {
  const PageViewWidget({super.key, required this.product});

  final ProductEntity? product;

  @override
  State<PageViewWidget> createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  var _page = 0;

  void _onChangedPage(int page) {
    setState(() {
      _page = page;
    });
  }

  Future<dynamic> _showModalBottomSheetDetail(
      BuildContext context, ProductEntity product) {
    return showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.black38,
      useRootNavigator: true,
      context: context,
      builder: (context) => DetailImageWidget(
        product: product,
        initialPage: _page,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final product = widget.product;
    return Stack(
      children: [
        PageView.builder(
          onPageChanged: _onChangedPage,
          itemCount: product!.images.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                _showModalBottomSheetDetail(context, product);
              },
              child: Image.network(
                product.images[index],
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              ),
            );
          },
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 8.h),
          child: Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Container(
                color: Colors.black45,
                padding: EdgeInsets.all(8.w),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(
                    product.images.length,
                    (index) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.w),
                      child: ClipOval(
                        child: Container(
                          width: 8.w,
                          height: 8.w,
                          color: _page == index
                              ? AppColors.mainColor
                              : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
