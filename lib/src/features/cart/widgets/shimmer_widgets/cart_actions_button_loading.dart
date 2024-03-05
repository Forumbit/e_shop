import 'package:e_shop/src/core/common/constants/app_colors.dart';
import 'package:e_shop/src/core/common/widgets/shimmer/shimmer_loading.dart';
import 'package:flutter/material.dart';

class CartAcionsButtonLoading extends StatelessWidget {
  const CartAcionsButtonLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ShimmerLoading(
          isLoading: true,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.clear),
          ),
        ),
        ShimmerLoading(
          isLoading: true,
          child: IconButton(
            highlightColor: AppColors.defaultColor,
            onPressed: () {},
            icon: const Icon(Icons.edit),
          ),
        ),
      ],
    );
  }
}
