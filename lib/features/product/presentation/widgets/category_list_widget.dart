import 'package:e_shop/common/constants/app_colors.dart';
import 'package:e_shop/common/widgets/shimmer/shimmer_loading.dart';
import 'package:flutter/material.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({
    super.key,
    required this.isLoading,
  });

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Категории',
                style: TextStyle(
                  color: Color(0xFF4A4A4A),
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              Text(
                'Посмотреть все',
                style: TextStyle(
                  color: Color(0xFFB6B4B0),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 7),
        SizedBox(
          height: 64,
          child: ListView.separated(
            physics: isLoading ? const NeverScrollableScrollPhysics() : null,
            padding: const EdgeInsets.only(left: 20),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return CategoryItemWidget(isLoading: isLoading);
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(width: 11);
            },
          ),
        ),
      ],
    );
  }
}

class CategoryItemWidget extends StatelessWidget {
  final bool isLoading;
  const CategoryItemWidget({super.key, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return ShimmerLoading(
      isLoading: isLoading,
      child: SizedBox(
        height: 64,
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColors.defaultColor),
            overlayColor:  MaterialStateProperty.all(Colors.grey),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          onPressed: () {
            if (isLoading) return;
            print(123);
          },
          child: const Text(
            'Телефон',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
