import 'package:e_shop/common/constants/app_colors.dart';
import 'package:e_shop/common/constants/app_images.dart';
import 'package:e_shop/common/constants/app_route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({
    super.key,
    this.controllerText,
  });

  final String? controllerText;

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.controllerText);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _controller,
            onSubmitted: (String text) {
              if (_controller.text == '') return;

              context.pushNamed(
                AppRouteNamed.searchProduct,
                pathParameters: {
                  AppRouteArgument.query: text,
                },
              );
            },
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.defaultColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50.r),
                borderSide: BorderSide.none,
              ),
              prefixIcon: Padding(
                padding: EdgeInsets.only(left: 20.w, right: 9.w),
                child: Image.asset(AppImages.search),
              ),
              hintText: 'Искать',
            ),
          ),
        ),
        SizedBox(width: 10.w),
        SizedBox(
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(AppImages.filter),
            padding: const EdgeInsets.all(15),
            iconSize: 25.w,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                AppColors.defaultColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
