import 'package:e_shop/common/constants/app_colors.dart';
import 'package:e_shop/common/widgets/shimmer/shimmer_loading.dart';
import 'package:e_shop/features/product/domain/entities/product_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselProductWidget extends StatefulWidget {
  const CarouselProductWidget({
    super.key,
    required this.product,
  });

  final ProductEntity? product;

  @override
  State<CarouselProductWidget> createState() => _CarouselProductWidgetState();
}

class _CarouselProductWidgetState extends State<CarouselProductWidget> {
  var _page = 0;

  void _onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    final product = widget.product;
    return ShimmerLoading(
      isLoading: product == null,
      child: SizedBox(
        height: 330.w,
        child: Stack(
          children: [
            PageView.builder(
              onPageChanged: _onPageChanged,
              itemCount: product!.images.length,
              itemBuilder: (BuildContext context, int index) {
                return Image.network(
                  product.images[index],
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
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
        ),
      ),
    );
  }
}
