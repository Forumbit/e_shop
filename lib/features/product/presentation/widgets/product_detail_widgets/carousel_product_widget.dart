
import 'package:e_shop/common/widgets/shimmer/shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselProductWidget extends StatefulWidget {
  const CarouselProductWidget({
    super.key,
    required this.isLoading,
  });

  final bool isLoading;

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
    return ShimmerLoading(
      isLoading: widget.isLoading,
      child: SizedBox(
        height: 330.w,
        child: Stack(
          children: [
            PageView.builder(
              onPageChanged: _onPageChanged,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Image.network(
                  'https://i.dummyjson.com/data/products/9/thumbnail.jpg',
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                );
              },
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.h),
              child: Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(
                    10,
                    (index) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.w),
                      child: ClipOval(
                        child: Container(
                          width: 8.w,
                          height: 8.w,
                          color: _page == index ? Colors.white : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
