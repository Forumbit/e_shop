import 'package:e_shop/common/constants/app_colors.dart';
import 'package:e_shop/features/product/domain/entities/product_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailImageWidget extends StatefulWidget {
  const DetailImageWidget({
    super.key,
    required this.initialPage,
    required this.product,
  });

  final int initialPage;
  final ProductEntity? product;

  @override
  State<DetailImageWidget> createState() => _DetailImageWidgetState();
}

class _DetailImageWidgetState extends State<DetailImageWidget> {
  late final PageController _pageController;
  var _page;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.initialPage);
    _page = _pageController.initialPage;
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onChangedPage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    final product = widget.product;
    return Column(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
          ),
        ),
        SizedBox(
          height: 400.h,
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: _onChangedPage,
            itemCount: product!.images.length,
            itemBuilder: (BuildContext context, int index) {
              return Image.network(
                product.images[index],
                filterQuality: FilterQuality.high,
              );
            },
          ),
        ),
        SizedBox(
          height: 20.h,
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
          ),
        ),
        ClipRRect(
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
                      color:
                          _page == index ? AppColors.mainColor : Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
          ),
        ),
      ],
    );
  }
}
