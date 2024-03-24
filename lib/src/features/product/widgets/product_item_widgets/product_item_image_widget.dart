import 'package:e_shop/src/core/common/constants/app_colors.dart';
import 'package:e_shop/src/core/common/constants/app_shadows.dart';
import 'package:e_shop/src/features/product/domain/entities/product_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailImageWidget extends StatefulWidget {
  const ProductDetailImageWidget({super.key, required this.product});

  final ProductEntity product;

  @override
  State<ProductDetailImageWidget> createState() =>
      _ProductDetailImageWidgetState();
}

class _ProductDetailImageWidgetState extends State<ProductDetailImageWidget> {
  bool loading = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.defaultColor,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: AppShadows.itemShadow,
      ),
      child: AspectRatio(
        aspectRatio: 157 / 176,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.r),
          child: Image.network(
            widget.product.thumbnail,
            fit: BoxFit.cover,
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent? loadingProgress) {
              final totalBytes = loadingProgress?.expectedTotalBytes;
              final bytesLoaded = loadingProgress?.cumulativeBytesLoaded;
              if (totalBytes != null && bytesLoaded != null) {
                return CircularProgressIndicator(
                  backgroundColor: Colors.white70,
                  value: bytesLoaded / totalBytes,
                  color: Colors.blue[900],
                  strokeWidth: 5.0,
                );
              } else {
                return child;
              }
            },
            frameBuilder: (BuildContext context, Widget child, int? frame,
                bool wasSynchronouslyLoaded) {
              if (wasSynchronouslyLoaded) {
                return child;
              }
              return AnimatedOpacity(
                opacity: frame == null ? 0 : 1,
                duration: const Duration(seconds: 1),
                curve: Curves.easeOut,
                child: child,
              );
            },
          ),
        ),
      ),
    );
  }
}
