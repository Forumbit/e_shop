import 'package:e_shop/common/constants/app_colors.dart';
import 'package:e_shop/common/constants/app_images.dart';
import 'package:e_shop/common/widgets/shimmer/shimmer_loading.dart';
import 'package:flutter/material.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({
    super.key,
    required this.isLoading,
  });

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isLoading) return;
        print('123');
      },
      child: SizedBox(
        width: 156,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShimmerLoading(
              isLoading: isLoading,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.defaultColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: AspectRatio(
                  aspectRatio: 157 / 176,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      AppImages.thumbnail,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            ShimmerLoading(
              isLoading: isLoading,
              child: (isLoading) ? _LoadItemWidget() : _ContentItemWidget(),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

class _ContentItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const discountPercent = 12.96;
    final finalPrice = (33 * (100 - discountPercent) / 100).ceilToDouble();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              '\$$finalPrice',
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.lineThrough,
                color: Color(0xFF4A4A4A),
              ),
            ),
            const SizedBox(width: 4),
            const Text(
              '\$33.00',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFFB6B4B0),
              ),
            ),
            const Spacer(),
            Image.asset(
              AppImages.star,
              color: Colors.yellow,
            ),
            const SizedBox(width: 4),
            const Text(
              '4.5',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF4A4A4A),
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        const Text(
          'Имя продукта',
          style: TextStyle(
            fontSize: 14,
            color: Color(0xFF696D84),
          ),
          maxLines: 1,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

class _LoadItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.defaultColor,
            borderRadius: BorderRadius.circular(16),
          ),
          width: double.infinity,
          height: 24,
        ),
        const SizedBox(height: 4),
        Container(
          decoration: BoxDecoration(
            color: AppColors.defaultColor,
            borderRadius: BorderRadius.circular(16),
          ),
          width: 100,
          height: 24,
        ),
      ],
    );
  }
}
