import 'package:e_shop/common/constants/app_text_styles.dart';
import 'package:e_shop/features/product/presentation/widgets/product_item_widget.dart';
import 'package:flutter/material.dart';

class PopularProductWidget extends StatelessWidget {
  const PopularProductWidget({
    super.key,
    required this.isLoading,
  });

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Популярные',
                style: AppTextStyles.subtitleStyle,
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
          height: 250,
          child: ListView.separated(
            physics: isLoading ? const NeverScrollableScrollPhysics() : null,
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            separatorBuilder: (BuildContext context, int index) {
              return ProductItemWidget(isLoading: isLoading);
            },
            itemBuilder: (BuildContext context, int index) {
              return const SizedBox(width: 20);
            },
          ),
        ),
      ],
    );
  }
}