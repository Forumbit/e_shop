import 'package:e_shop/core/common/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  var _index = 0;

  void _onChanged(int index) {
    _index = index;
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: Container(
        height: 60.h,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, -6),
              blurRadius: 20,
            )
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: double.infinity,
              height: 2.h,
              child: Stack(
                children: [
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 1000),
                    left: (MediaQuery.of(context).size.width / 8 - 10) +
                        (MediaQuery.of(context).size.width / 4 * _index),
                    curve: Curves.fastOutSlowIn,
                    child: Container(
                      width: 20.w,
                      height: 3.h,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () => _onChanged(0),
                  icon: Image.asset(AppImages.home),
                ),
                IconButton(
                  onPressed: () => _onChanged(1),
                  icon: Image.asset(AppImages.cart),
                ),
                IconButton(
                  onPressed: () => _onChanged(2),
                  icon: Image.asset(AppImages.heartOutlined),
                ),
                IconButton(
                  onPressed: () => _onChanged(3),
                  icon: Image.asset(AppImages.user),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
